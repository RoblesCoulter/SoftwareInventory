class MovementsController < ApplicationController
  before_action :logged_in_user
  before_action :admin_user, only: [:return,:new, :create, :edit, :update, :destroy]
  before_action :set_movement, only: [:show, :edit, :update, :destroy, :movement_boxes, :add_scans, :remove_box]
  helper_method :sort_column
  # GET /movements
  # GET /movements.json
  def index
    sc = sort_column
    if sc.eql? "origin_id"
      @movements = Movement.includes(:origin).search(params[:search]).order("locations.name" + " "+ sort_direction).paginate(per_page: 10, page: params[:page])
    elsif sc.eql? "destination_id"
      @movements = Movement.includes(:destination).search(params[:search]).order("locations.name"+ " "+ sort_direction).paginate(per_page: 10, page: params[:page])
    else
     @movements = Movement.search(params[:search]).order(sort_column + " "+ sort_direction).paginate(per_page: 10, page: params[:page])
    end
  end

  # GET /movements/1
  # GET /movements/1.json
  def show
  end

  # GET /movements/new
  def new
    @movement = Movement.new
  end

  # GET /movements/1/edit
  def edit
  end

  def movement_boxes
    @boxes = @movement.boxes
  end

  def return
    @sent_movement = Movement.find(params[:id])
    @movement = Movement.new
    @movement.is_return = true
    @movement.origin = @sent_movement.destination
    @movement.destination = @sent_movement.origin
    @movement.sent_movement = @sent_movement
    render :new
  end

  def add_scans
    @scans = params.require(:scanned_boxes)
    @boxesRetreived = Box.where(barcode: @scans).order(:barcode)
    @boxesRetreived.each do |box|
      @scans.delete(box.barcode)
    end
    @movement.boxes << @boxesRetreived
    respond_to do |format|
      format.json { render json: [{ notfound: @scans, boxesadded: @boxesRetreived }] }
    end
  end

  def remove_box
    @barcode = params.require(:barcode)
    @box = Box.where(barcode: @barcode)
    @movement.boxes.delete(@box)
    respond_to do |format|
      format.json { render json: [{ confirmation: @box }]}
    end
  end
  # POST /movements
  # POST /movements.json
  def create
    @movement = Movement.new(movement_params)

    respond_to do |format|
      if @movement.save
        if @movement.is_return
          format.html { redirect_to movement_boxes_movement_url(@movement)}
          format.json { render :movement_boxes, status: :created, location: @movement }
        else
          format.html { redirect_to movements_url, notice: 'Movement was successfully created.' }
          format.json { render :show, status: :created, location: @movement }
        end
      else
        format.html { render :new }
        format.json { render json: @movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movements/1
  # PATCH/PUT /movements/1.json
  def update
    respond_to do |format|
      if @movement.update(movement_params)
        format.html { redirect_to movements_url, notice: 'Movement was successfully updated.' }
        format.json { render :show, status: :ok, location: @movement }
      else
        format.html { render :edit }
        format.json { render json: @movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movements/1
  # DELETE /movements/1.json
  def destroy
    @movement.destroy
    respond_to do |format|
      format.html { redirect_to movements_url, notice: 'Movement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movement
      @movement = Movement.find(params[:id])
    end

    def sort_column
       Movement.column_names.include?(params[:sort]) ? params[:sort] : "shipping_date"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movement_params
      params.require(:movement).permit(:is_return,:origin_id, :destination_id, :return_id, :shipping_date, :arrival_date, :delivery_method)
    end

    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    def admin_user
      redirect_to(movements_url) unless current_user.admin?
    end
end
