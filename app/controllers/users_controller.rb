class UsersController < ApplicationController
  before_action :check_if_logged_in, except: [:new,:create,:index, :destroy]
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id]= @user.id
      redirect_to projects_path
    else
      p @user.errors.full_messages
      render :new
    end

    if params[:user][:image].present?
      req = Cloudinary::Uploader.upload params[:user][:image]
      @user.image = req["public_id"]
    end
   @user.save
  end

  def index
  end

  def show
  end

  def edit
    redirect_to login_path  unless @current_user.id.present?
  end

  def update
    if params[:user][:image].present?
      req = Cloudinary::Uploader.upload params[:user][:image]
      @current_user.image = req["public_id"]
    end
    
    if @current_user.update user_params
      redirect_to user_path(@current_user)
    else
      render :edit  # show the edit form again, pre-filled (and also with @user.errors)
    end
   
  end

  ### Public profile of the user
  def public_profile
    @user = User.find params[:id]
  end

  def destroy
    User.destroy params[:id]
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name,:email,:password,:studio,:studio_url,:location)
  end
end
