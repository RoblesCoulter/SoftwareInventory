class ReportsController < ApplicationController
	before_action :logged_in_user
	before_action :set_movement, only: [:boxes_per_movement]
	helper_method :sort_column


	def index
		
	end

	def boxes_per_movement_index
		sc = sort_column
	    if sc.eql? "origin_id"
	      @movements = Movement.includes(:origin).search(params[:search]).order("locations.name" + " "+ sort_direction).paginate(per_page: 10, page: params[:page])
	    elsif sc.eql? "destination_id"
	      @movements = Movement.includes(:destination).search(params[:search]).order("locations.name"+ " "+ sort_direction).paginate(per_page: 10, page: params[:page])
	    else
	     @movements = Movement.search(params[:search]).order(sort_column + " "+ sort_direction).paginate(per_page: 10, page: params[:page])
	    end
	end

	def boxes_per_movement
		@boxes = @movement.boxes
	end

	private
		def logged_in_user
	      unless logged_in?
	        store_location
	        flash[:danger] = "Please log in."
	        redirect_to login_url
	      end
	    end

	    def set_movement
	      @movement = Movement.find(params[:id])
	    end

	    def sort_column
	       Movement.column_names.include?(params[:sort]) ? params[:sort] : "shipping_date"
	    end

	    def sort_direction
	      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
	    end
end
