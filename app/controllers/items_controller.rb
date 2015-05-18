class ItemsController < ApplicationController
  before_action :logged_in_user
  before_action :admin_user, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column
  # GET /items
  # GET /items.json
  def index
    sc = sort_column
    if sc.eql? "box_id"
      @items = Item.includes(:box).search(params[:search]).order("boxes.box_number" + " "+ sort_direction).paginate(per_page: 10, page: params[:page])
    elsif sc.eql? "product_id"
      @items = Item.includes(:product).search(params[:search]).order("products.name" + " "+ sort_direction).paginate(per_page: 10, page: params[:page])  
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

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
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
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
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
      params.require(:item).permit(:barcode, :box_id, :product_id, :serial_number, :model_number, :price, :location, :condition, :firmware, :photo, :responsable)
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
end
