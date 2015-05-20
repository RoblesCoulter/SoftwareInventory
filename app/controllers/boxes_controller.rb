class BoxesController < ApplicationController
  before_action :logged_in_user
  before_action :set_box, only: [:show, :edit, :update, :destroy]
  before_action :admin_user, only: [:new, :create, :edit, :update, :destroy]
  helper_method :sort_column

  # GET /boxes
  # GET /boxes.json
  def index
    @boxes = Box.search(params[:search]).order(sort_column + " "+ sort_direction).paginate(per_page: 10, page: params[:page])
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

      #delite old entry
      delete_entry(@box.photo, client)

      #upload new entry
      entry_id = kaltura_upload(box_params[:barcode] != nil ? box_params[:barcode] : @box.barcode,
                                box_params[:photo],
                                client)
    end

    #same image new barcode
    if @box.valid? && (box_params[:photo] == nil) && (box_params[:barcode] != nil)
      client = kaltura_setup

      #rename entry
      base_entry = Kaltura::KalturaBaseEntry.new
      base_entry.name = box_params[:barcode]
      base_entry_updated = client.base_entry_service.update(@box.photo, base_entry)
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
    if @box.photo
      client = kaltura_setup
      delete_entry(@box.photo, client)
    end

    @box.destroy
    respond_to do |format|
      format.html { redirect_to boxes_url, notice: 'Box was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_box
      @box = Box.find(params[:id])
    end

    def sort_column
       Box.column_names.include?(params[:sort]) ? params[:sort] : "barcode"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def box_params
      params.require(:box).permit(:barcode, :weight, :height, :width, :depth, :box_number, :photo, :condition, :notes)
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
