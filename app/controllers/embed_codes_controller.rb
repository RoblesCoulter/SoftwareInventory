class EmbedCodesController < ApplicationController
  before_action :set_embed_code, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column
  before_action :logged_in_user
  before_action :admin_user, only: [:new, :create, :edit, :update, :destroy]
  # GET /embed_codes
  # GET /embed_codes.json
  def index
    sc = sort_column
		@q = EmbedCode.ransack(params[:q])
		@sort = sc + " "
		if params[:page]
			cookies[:embed_codes_page] = {
				value: params[:page],
				expires: 1.day.from_now
			}
		end
		@embed_codes = @q.result.order(@sort + sort_direction).page(cookies[:embed_codes_page]).per_page(20)
  end

  # GET /embed_codes/1
  # GET /embed_codes/1.json
  def show
    #@event_id = params[:event_id]
    #@university_id = params[:university_id]
    #@events_university = EventsUniversity.where(event_id: @event_id, embed_code_university_id: @university_id).take
    #@embed_code = EmbedCode.where(events_university_id: @events_university.id)
    #if @embed_code.empty?
    #  @embed_code = EmbedCode.new(events_university_id: @events_university.id)
    #end
    #@embed_code.save
  end

  # GET /embed_codes/new
  def new
    @embed_code = EmbedCode.new
  end

  # GET /embed_codes/1/edit
  def edit
  end

  # POST /embed_codes
  # POST /embed_codes.json
  def create
    @embed_code = EmbedCode.new(embed_code_params)

    respond_to do |format|
      if @embed_code.save
        format.html { redirect_to @embed_code, notice: 'Embed code was successfully created.' }
        format.json { render :show, status: :created, location: @embed_code }
      else
        format.html { render :new }
        format.json { render json: @embed_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /embed_codes/1
  # PATCH/PUT /embed_codes/1.json
  def update
    respond_to do |format|
      if @embed_code.update(embed_code_params)
        format.html { redirect_to @embed_code, notice: 'Embed code was successfully updated.' }
        format.json { render :show, status: :ok, location: @embed_code }
      else
        format.html { render :edit }
        format.json { render json: @embed_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /embed_codes/1
  # DELETE /embed_codes/1.json
  def destroy
    @embed_code.destroy
    respond_to do |format|
      format.html { redirect_to embed_codes_url, notice: 'Embed code was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_embed_code
      @embed_code = EmbedCode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def embed_code_params
      params.require(:embed_code).permit(:name, :code)
    end

    def sort_direction
			%w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
		end

    def sort_column
      EmbedCode.column_names.include?(params[:sort]) ? params[:sort] : "name"
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
