class ItemsController < ApplicationController
  before_action :logged_in_user
  before_action :admin_user, only: [:new, :create, :edit, :update, :destroy, :remove_photo]
  before_action :set_item, only: [:show, :edit, :update, :destroy, :remove_photo]
  helper_method :sort_column
  # GET /items
  # GET /items.json
  def index
    sc = sort_column
    if sc.eql? "box_id"
      @items = Item.includes(:box).search(params[:search]).order("boxes.box_number" + " "+ sort_direction).paginate(per_page: 10, page: params[:page])
    elsif sc.eql? "product_id"
      @items = Item.includes(:product).search(params[:search]).order("products.name" + " "+ sort_direction).paginate(per_page: 10, page: params[:page])  
    elsif sc.eql? "condition_id"
      @items = Item.includes(:condition).search(params[:search]).order("conditions.name" + " "+ sort_direction).paginate(per_page: 10, page: params[:page])  
    elsif sc.eql? "location_id"
        @items = Item.includes(:location).search(params[:search]).order("locations.country" + " " + sort_direction).paginate(per_page: 10, page: params[:page])
    else
      @items = Item.search(params[:search]).order(sc + " "+ sort_direction).paginate(per_page: 10, page: params[:page])
    end
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    if @item.valid? && @item.photo?
      client = kaltura_setup
      entry_id = kaltura_upload(item_params[:barcode], item_params[:photo], client)
      @item.photo = entry_id
    end

    respond_to do |format|
      if @item.save
        format.html { redirect_to items_url, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        if @item.photo != nil
          @item.photo = nil
          @item.errors[:photo] = "Please select the image again"
        end
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    entry_id = nil

    #new image
    if @item.valid? && (item_params[:photo] != nil)
      client = kaltura_setup

      #delete old entry
      if @item.photo
        delete_entry(@item.photo, client)
      end

      #upload new entry
      entry_id = kaltura_upload(item_params[:barcode] != nil ? item_params[:barcode] : @item.barcode,
                                item_params[:photo],
                                client)
    end

    #same image new barcode
    if @item.valid? && (item_params[:photo] == nil) && (item_params[:barcode] != nil)
      client = kaltura_setup

      if @item.photo
        #rename entry
        base_entry = Kaltura::KalturaBaseEntry.new
        base_entry.name = item_params[:barcode]
        base_entry_updated = client.base_entry_service.update(@item.photo, base_entry)
      end
    end

    respond_to do |format|
      if @item.update(item_params)
        if entry_id != nil
          @item.photo = entry_id
          @item.save
        end

        format.html { redirect_to items_url, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    if @item.photo
      client = kaltura_setup
      delete_entry(@item.photo, client)
    end

    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def remove_photo
    if @item.photo
      client = kaltura_setup
      delete_entry(@item.photo, client)
      @item.photo = nil
      @item.save
    end

    respond_to do |format|
      format.html { render :edit, notice: 'Photo was successfully removed.' }
      format.json { render :edit, status: :ok, location: @item }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    def sort_column
      Item.column_names.include?(params[:sort]) ? params[:sort] : "barcode" 
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:barcode,:location_id ,:box_id, :product_id, :serial_number, :model_number, :price, :condition_id, :firmware, :photo, :responsable, :notes)
    end

    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    def admin_user
      redirect_to(items_url) unless current_user.admin?
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
