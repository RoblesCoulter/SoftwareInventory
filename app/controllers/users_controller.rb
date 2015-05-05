class UsersController < ApplicationController
  before_action :logged_in_user
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: [:new, :create, :destroy]

  def index
    @users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		flash[:success] = "The user has been created"
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  def password_reset_expired?
    reset_sent_at < 2.hours.ago
  end

  private
  	def user_params
  		params.require(:user).permit(:name, :email, :password, :password_confirmation, :admin)
  	end

    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless (current_user?(@user) || current_user.admin?)
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
