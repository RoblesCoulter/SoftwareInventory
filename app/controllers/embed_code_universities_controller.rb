class EmbedCodeUniversitiesController < ApplicationController
	before_action :set_embed_code_university, only: [:show, :edit, :update, :destroy]
	before_action :logged_in_user
	before_action :admin_user, only: [:new, :create, :edit, :update, :destroy]
	helper_method :sort_column

	# GET /embed_code_universities
	# GET /embed_code_universities.json
	def index
		sc = sort_column
		@q = EmbedCodeUniversity.ransack(params[:q])
		@sort = sc + " "
		if params[:page]
			cookies[:embed_code_universities_page] = {
				value: params[:page],
				expires: 1.day.from_now
			}
		end
		@embed_code_universities = @q.result.order(@sort + sort_direction).page(cookies[:embed_code_universities_page]).per_page(10)
	end

	# GET /embed_code_universities/1
	# GET /embed_code_universities/1.json
	def show
	end

	# GET /embed_code_universities/new
	def new
		@embed_code_university = EmbedCodeUniversity.new
		if params[:contact_id]
			contact_id = params.require(:contact_id)
		end
	end

	# GET /embed_code_universities/1/edit
	def edit
	end

	# POST /embed_code_universities
	# POST /embed_code_universities.json
	def create
		@embed_code_university = EmbedCodeUniversity.new(embed_code_university_params)

		if params[:contact_id]
			contact = params.require(:contact_id)
			@embed_code_university.university_contacts << UniversityContact.find(contact)
		end

		respond_to do |format|
			if @embed_code_university.save
				format.html { redirect_to embed_code_universities_url, notice: 'Embed Code University was successfully created.' }
				format.json { render :show, status: :created, location: @embed_code_university }
			else
				format.html { render :new }
				format.json { render json: @embed_code_university.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /embed_code_universities/1
	# PATCH/PUT /embed_code_universities/1.json
	def update
		respond_to do |format|
			if @embed_code_university.update(embed_code_university_params)
				format.html { redirect_to embed_code_universities_url, notice: 'Embed code university was successfully updated.' }
				format.json { render :show, status: :ok, location: @embed_code_university }
			else
				format.html { render :edit }
				format.json { render json: @embed_code_university.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /embed_code_universities/1
	# DELETE /embed_code_universities/1.json
	def destroy
		@embed_code_university.destroy
		respond_to do |format|
			format.html { redirect_to embed_code_universities_url, notice: 'Embed code university was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	def university_contacts
		@id = params.require(:university_id)
		@contacts = EmbedCodeUniversity.find(@id).university_contacts
		respond_to do |format|
			format.json { render json: @contacts }
		end
	end

	def university_dropdown
		@contact_id = params.require(:contact_id)
		@universities = (EmbedCodeUniversity.all.order("name") - UniversityContact.find(@contact_id).embed_code_universities).map { |e| [ e.id, e.acronym, e.name]}
		respond_to do |format|
			format.json { render json: [{ universities: @universities }]}
		end
	end

	def add_contact
		@university_id = params.require(:university_id)
		@contact_id = params.require(:contact_id)
		@contact = UniversityContact.find(@contact_id)
		@university = EmbedCodeUniversity.find(@university_id)
		@university.university_contacts << @contact
		respond_to do |format|
			if @university.save
				format.json { render json: @contact }
			else
				format.json { render json: @university.errors, status: :unprocessable_entity }
			end
		end
	end

	def remove_contact
		@contact_id = params.require(:contact_id)
		@university_id = params.require(:university_id)
		@contact = UniversityContact.find(@contact_id)
		@university = EmbedCodeUniversity.find(@university_id)
		@university.university_contacts.destroy(@contact)
		respond_to do |format|
			if @university.save
				format.json { render json: @university}
			else
				format.json { render json: @university.errors, status: :unprocessable_entity }
			end
		end
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_embed_code_university
			@embed_code_university = EmbedCodeUniversity.find(params[:id])
		end

		def sort_column
			EmbedCodeUniversity.column_names.include?(params[:sort]) ? params[:sort] : "name"
		end

		def sort_direction
			%w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def embed_code_university_params
			params.require(:embed_code_university).permit(:acronym, :name, :comments, :test_user, :test_password, :test_site, :embed_code, :status)
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
