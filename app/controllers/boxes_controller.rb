class BoxesController < ApplicationController
	before_action :logged_in_user
	before_action :set_box, only: [:show, :edit, :update, :destroy, :box_items, :add_scans, :remove_photo, :remove_item]
	before_action :admin_user, only: [:new, :create, :edit, :update, :destroy, :remove_photo, :remove_item]
	helper_method :sort_column

	# GET /boxes
	# GET /boxes.json
	def index
		sc = sort_column
		@q = Box.ransack(params[:q])
		@sort = sc + " "
		if sc.eql? "location_id"
			@sort = "locations.country "
		end
		if params[:page]
			cookies[:boxes_page] = {
				value: params[:page],
				expires: 1.day.from_now
			}
		end
		@boxes = @q.result.includes(:location).order(@sort + sort_direction).page(cookies[:boxes_page]).per_page(5)
	end

	# GET /boxes/1
	# GET /boxes/1.json
	def show
	end

	# GET /boxes/new
	def new
		@box = Box.new
	end

	# GET /boxes/1/edit
	def edit
	end

	# GET /boxes/1/box_items
	def box_items
		@items = @box.items
	end

	# POST /boxes/1/add_scans
	def add_scans
		@scans = params.require(:scanned_items)
		@itemsRetreived = Item.joins(:product).where(barcode: @scans).order(:barcode)
		@itemsNotInBoxes = @itemsRetreived.select(:id, :barcode, :name).where(box_id: nil)
		@itemsNotInBoxes = @itemsNotInBoxes.map
		@itemsInBoxes = @itemsRetreived.select(:id, :box_id, :box_number, :barcode, :name).joins(:box).where.not(box_id: nil).map
		@oldItemsBoxes = {}
		@itemsInBoxes.each do |item|
			@oldItemsBoxes[item.id] = item.box.box_number
		end
		@itemsRetreived.each do |item|
			item.box = @box
			item.save
			@scans.delete(item.barcode)
		end
		respond_to do |format|
				format.json { render json: [{ notfound: @scans, notinboxitems: @itemsNotInBoxes, movedfrombox: @itemsInBoxes, oldboxesid: @oldItemsBoxes }] }
		end
	end
	# POST /boxes/1/remove_item
	def remove_item
		@barcode = params.require(:barcode)
		@item = Item.where(barcode: @barcode)
		@box.items.delete(@item)
		respond_to do |format|
			format.json { render json: [{ confirmation: @item }]}
		end
	end
	# POST /boxes
	# POST /boxes.json
	def create
		@box = Box.new(box_params)
		if @box.valid? && @box.photo?
			client = kaltura_setup
			entry_id = kaltura_upload(box_params[:barcode], box_params[:photo], client)

			@box.photo = entry_id
		end

		respond_to do |format|
			if @box.save
				format.html { redirect_to @box, notice: 'Box was successfully created.' }
				format.json { render :show, status: :created, location: @box }
			else
				if @box.photo != nil
					@box.photo = nil
					@box.errors[:photo] = "Please select the image again"
				end
				format.html { render :new }
				format.json { render json: @box.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /boxes/1
	# PATCH/PUT /boxes/1.json
	def update
		entry_id = nil

		#new image
		if @box.valid? && (box_params[:photo] != nil)
			client = kaltura_setup

			#delete old entry
			if @box.photo
				if Rails.env.production?
					delete_entry(@box.photo, client)
				end
			end

			#upload new entry
			entry_id = kaltura_upload(box_params[:barcode] != nil ? box_params[:barcode] : @box.barcode,
																box_params[:photo],
																client)
		end

		#same image new barcode
		if @box.valid? && (box_params[:photo] == nil) && (box_params[:barcode] != nil)
			client = kaltura_setup

			#rename entry
			if @box.photo
				base_entry = Kaltura::KalturaBaseEntry.new
				base_entry.name = box_params[:barcode]
				base_entry_updated = client.base_entry_service.update(@box.photo, base_entry)
			end
		end

		respond_to do |format|
			if @box.update(box_params)
				if entry_id != nil
					@box.photo = entry_id
					@box.save
				end
				format.html { redirect_to @box, notice: 'Box was successfully updated.' }
				format.json { render :show, status: :ok, location: @box }
			else
				format.html { render :edit }
				format.json { render json: @box.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /boxes/1
	# DELETE /boxes/1.json
	def destroy
		@page = params[:page]

		if @box.photo
			if Rails.env.production?
				client = kaltura_setup
				delete_entry(@box.photo, client)
			end
		end

		@box.destroy
		respond_to do |format|
			format.html { redirect_to boxes_url, notice: 'Box was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	def remove_photo
		if @box.photo
			if Rails.env.production?
				client = kaltura_setup
				delete_entry(@box.photo, client)
			end

			@box.photo = nil
			@box.save
		end

		respond_to do |format|
			format.html { render :edit, notice: 'Photo was successfully removed.' }
			format.json { render :edit, status: :ok, location: @box }
		end
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_box
			@box = Box.find(params[:id])
		end

		def sort_column
			 Box.column_names.include?(params[:sort]) ? params[:sort] : "box_number"
		end

		def sort_direction
			%w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
		end
		# Never trust parameters from the scary internet, only allow the white list through.
		def box_params
			params.require(:box).permit(:barcode,:location_id, :weight, :height, :width, :depth, :box_number, :photo, {:condition_ids => []}, :description)
		end

		def logged_in_user
			unless logged_in?
				store_location
				flash[:danger] = "Please log in."
				redirect_to login_url
			end
		end

		def admin_user
			redirect_to(boxes_url) unless current_user.admin?
		end

		def kaltura_setup
			config_file = YAML.load_file("#{Rails.root}/config/kaltura.yml")

			partner_id = config_file["default"]["partner_id"]
			service_url = config_file["default"]["service_url"]
			administrator_secret = config_file["default"]["administrator_secret"]
			timeout = config_file["default"]["timeout"]

			config = Kaltura::KalturaConfiguration.new(partner_id, service_url)
			config.timeout = timeout

			client = Kaltura::KalturaClient.new( config )
			session = client.session_service.start( administrator_secret, '', Kaltura::KalturaSessionType::ADMIN )
			client.ks = session

			return client
		end

		def kaltura_upload(entry_name, photo_object, client)
			# temporal upload
			new_path = Rails.root.join('public', 'images', photo_object.original_filename)
			File.open(new_path, 'wb') do |file|
				file.write(photo_object.read)
			end

			# kaltura upload process
			media_entry = Kaltura::KalturaMediaEntry.new
			media_entry.name = entry_name
			media_entry.media_type = Kaltura::KalturaMediaType::IMAGE
			video_file = File.open(new_path)

			video_token = client.media_service.upload(video_file)
			created_entry2 = client.media_service.add_from_uploaded_file(media_entry, video_token)

			# delete temporary file
			File.delete(new_path) if File.exist?(new_path)

			return created_entry2.id
		end

		def delete_entry(entry_id, client)
			client.media_service.delete(entry_id)
		end
end
