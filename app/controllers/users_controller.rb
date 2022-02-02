class UsersController < ApplicationController
  before_action :check_if_logged_in, except: [:new,:create]
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
  end

  def index
  end

  def show
    @user = User.find params[:id]
    
  end

  def edit
    @user = User.find params[:id]

  end

  def update
    if @user.update user_params
      redirect_to profile_path(@user)
    else
      render :edit  # show the edit form again, pre-filled (and also with @user.errors)
    end
  end

  def destroy
    User.destroy params[:id]
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name,:email,:password,:studio,:location)
  end
end
