class UniversityContactsController < ApplicationController
  before_action :set_university_contact, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user
  before_action :admin_user, only: [:new, :create, :edit, :update,:destroy ]
  helper_method :sort_column
  # GET /university_contacts
  # GET /university_contacts.json
  def index
    sc = sort_column
    @q = UniversityContact.ransack(params[:q])
    @sort = sc + " "
    if params[:page]
      cookies[:university_contacts_page] = {
        value: params[:page],
        expires: 1.day.from_now
      }
    end
    @university_contacts = @q.result.order(@sort + sort_direction).page(cookies[:university_contacts_page]).per_page(10)
  end

  # GET /university_contacts/1
  # GET /university_contacts/1.json
  def show
  end

  # GET /university_contacts/new
  def new
    @university_contact = UniversityContact.new
  end

  # GET /university_contacts/1/edit
  def edit
  end

  # POST /university_contacts
  # POST /university_contacts.json
  def create
    @university_contact = UniversityContact.new(university_contact_params)

    respond_to do |format|
      if @university_contact.save
        format.html { redirect_to university_contacts_url, notice: 'University contact was successfully created.' }
        format.json { render :show, status: :created, location: @university_contact }
      else
        format.html { render :new }
        format.json { render json: @university_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /university_contacts/1
  # PATCH/PUT /university_contacts/1.json
  def update
    respond_to do |format|
      if @university_contact.update(university_contact_params)
        format.html { redirect_to university_contacts_url, notice: 'University contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @university_contact }
      else
        format.html { render :edit }
        format.json { render json: @university_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /university_contacts/1
  # DELETE /university_contacts/1.json
  def destroy
    @university_contact.destroy
    respond_to do |format|
      format.html { redirect_to university_contacts_url, notice: 'University contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_university_contact
      @university_contact = UniversityContact.find(params[:id])
    end

    def sort_column
      UniversityContact.column_names.include?(params[:sort]) ? params[:sort] : "name"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end    

    # Never trust parameters from the scary internet, only allow the white list through.
    def university_contact_params
      params.require(:university_contact).permit(:name, :email, :skype, :role)
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
