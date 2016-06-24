class EmbedCodeVariablesController < ApplicationController
  before_action :set_embed_code_variable, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column
  before_action :logged_in_user
  before_action :admin_user, only: [:new, :create, :edit, :update, :destroy]
  # GET /embed_code_variables
  # GET /embed_code_variables.json
  def index
    sc = sort_column
		@q = EmbedCodeVariable.ransack(params[:q])
		@sort = sc + " "
		if params[:page]
			cookies[:embed_code_variables_page] = {
				value: params[:page],
				expires: 1.day.from_now
			}
		end
		@embed_code_variables = @q.result.order(@sort + sort_direction).page(cookies[:embed_code_variables_page]).per_page(20)
  end

  # GET /embed_code_variables/1
  # GET /embed_code_variables/1.json
  def show
    #@event_id = params[:event_id]
    #@university_id = params[:university_id]
    #@events_university = EventsUniversity.where(event_id: @event_id, embed_code_variable_university_id: @university_id).take
    #@embed_code_variable = EmbedCodeVariable.where(events_university_id: @events_university.id)
    #if @embed_code_variable.empty?
    #  @embed_code_variable = EmbedCodeVariable.new(events_university_id: @events_university.id)
    #end
    #@embed_code_variable.save
  end

  # GET /embed_code_variables/new
  def new
    @embed_code_variable = EmbedCodeVariable.new
    @embed_code_variable_variables = @embed_code_variable.embed_code_variable_variables.build
  end

  # GET /embed_code_variables/1/edit
  def edit
  end

  # POST /embed_code_variables
  # POST /embed_code_variables.json
  def create
    @embed_code_variable = EmbedCodeVariable.new(embed_code_variable_params)

    respond_to do |format|
      if @embed_code_variable.save
        format.html { redirect_to @embed_code_variable, notice: 'Embed code was successfully created.' }
        format.json { render :show, status: :created, location: @embed_code_variable }
      else
        format.html { render :new }
        format.json { render json: @embed_code_variable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /embed_code_variables/1
  # PATCH/PUT /embed_code_variables/1.json
  def update
    respond_to do |format|
      if @embed_code_variable.update(embed_code_variable_params)
        format.html { redirect_to @embed_code_variable, notice: 'Embed code was successfully updated.' }
        format.json { render :show, status: :ok, location: @embed_code_variable }
      else
        format.html { render :edit }
        format.json { render json: @embed_code_variable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /embed_code_variables/1
  # DELETE /embed_code_variables/1.json
  def destroy
    @embed_code_variable.destroy
    respond_to do |format|
      format.html { redirect_to embed_code_variables_url, notice: 'Embed code was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_embed_code_variable
      @embed_code_variable = EmbedCodeVariable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def embed_code_variable_params
      params.require(:embed_code_variable).permit(:name, :code)
    end

    def sort_direction
			%w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
		end

    def sort_column
      EmbedCodeVariable.column_names.include?(params[:sort]) ? params[:sort] : "name"
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
