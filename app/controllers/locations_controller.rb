class LocationsController < ApplicationController
	before_action :logged_in_user
  before_action :admin_user, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_location, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column

  def index
  	@locations = Location.search(params[:search]).order(sort_column + " " + sort_direction).paginate(per_page: 10, page: params[:page])
  end

  def show
  end

  def new
  	@location = Location.new
  end

  def edit
  end

  def create
  	@location = Location.new(location_params)
  	respond_to do |format|
  		if @location.save
        format.html { redirect_to locations_url, notice: 'Location was successfully created.' }
        format.json { render :show, status: :created, location: @location }
      else
        format.html { render :new }
        format.json { render json: @location.errors, status: :unprocessable_entity }	
      end
  	end
  end

  def update
    respond_to do |format|
      if @location.update(location_params)
        format.html { redirect_to locations_url, notice: 'Location was successfully updated.' }
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @location.destroy
    respond_to do |format|
      format.html { redirect_to locations_url, notice: 'Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  	def set_location
      @location = Location.find(params[:id])
    end

    def sort_column
       Location.column_names.include?(params[:sort]) ? params[:sort] : "name"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:name, :country)
    end

    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    def admin_user
      redirect_to(locations_url) unless current_user.admin?
    end


end
