class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user
  before_action :admin_user, only: [:new, :create, :edit, :update, :destroy]
  helper_method :sort_column
  # GET /events
  # GET /events.json
  def index
		sc = sort_column
		@q = Event.ransack(params[:q])
		@sort = sc + " "
		if params[:page]
			cookies[:events_page] = {
				value: params[:page],
				expires: 1.day.from_now
			}
		end
		@events = @q.result.order(@sort + sort_direction).page(cookies[:events_page]).per_page(20)
	end

  # GET /events/1
  # GET /events/1.json
  def show
    sc = sort_column
    @sort = sc + " "
    if params[:page]
			cookies[:event_universities_page] = {
				value: params[:page],
				expires: 1.day.from_now
			}
		end
    @embed_code_universities = @event.embed_code_universities.order(@sort + sort_direction).page(cookies[:event_universities_page])
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  def add_code
    @events_university = EventsUniversity.find(params[:events_university_id])
    @code = params[:embed_code]
    @events_university.code = @code
    puts @code
    respond_to do |format|
      if @events_university.save
        format.json { render json: @events_university }
      else
        format.json { render json: @events_university.errors, status: :unprocessable_entity }
      end
    end
  end
  # GET /events/1/edit
  def edit
  end

  def generate_code
    @university = EmbedCodeUniversity.find(params[:university_id])
    @event = Event.find(params[:event_id])
    @events_university = EventsUniversity.where(event_id: @event.id, embed_code_university_id: @university.id).take
    @embed_codes = EmbedCode.all
    #@embed_code = EmbedCode.where(events_university_id: @events_university.id)
    #if @embed_code.empty?
    #  @embed_code = EmbedCode.new(events_university_id: @events_university.id)
    #end
    #@embed_code.save
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        @universities_ids = EmbedCodeUniversity.all.ids
        events_universities = []
        @universities_ids.each do |university_id|
          events_universities << EventsUniversity.new(:event_id => @event.id, :embed_code_university_id => university_id)
        end
        EventsUniversity.import events_universities
        format.html { redirect_to events_url, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to events_url, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def remove_university_from_event
    @event_university = EventsUniversity.where(embed_code_university_id: params[:university_id], event_id: params[:event_id])
    @event = Event.find(params[:event_id])
    @event.events_universities.destroy(@event_university)
    respond_to do |format|
      format.html { redirect_to @event, notice: 'University was removed from Event.' }
      format.json { render json: @event}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    def sort_direction
			%w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
		end

    def sort_column
      Event.column_names.include?(params[:sort]) ? params[:sort] : "name"
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :short_url, :embed_code)
    end

    def logged_in_user
			unless logged_in?
				store_location
				flash[:danger] = "Please log in."
				redirect_to login_url
			end
		end

		def admin_user
			redirect_to(products_url) unless current_user.admin?
		end
end
