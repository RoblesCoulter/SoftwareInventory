class ReportsController < ApplicationController
	before_action :logged_in_user
	before_action :set_movement, only: [:boxes_per_movement]
	helper_method :sort_column


	def index
	end

	def boxes_per_movement_index
		sc = sort_column
		@q = Movement.ransack(params[:q])
    @sort = sc + " "
    if ["origin_id", "destination_id"].include? sc
      @sort = "locations.country "
    end
		if params[:page]
  		cookies[:reports_page] = {
    		value: params[:page],
    		expires: 1.day.from_now
  		}
  	end
  	@movements = @q.result.includes(:origin, :destination).order(@sort + sort_direction).page(cookies[:reports_page]).per_page(10)
  
	end

	def boxes_per_movement
		@boxes = @movement.boxes
	end

	def boxes_per_movement_pdf
		
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
