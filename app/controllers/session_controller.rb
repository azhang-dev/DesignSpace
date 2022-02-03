class SessionController < ApplicationController
  def new
  end

  def create
    # 1. Check if the email address entered is actually in the DB
    user = User.find_by email: params[:email]

    # 2. Check email with password saved in DB
    if user.present? && user.authenticate( params[:password] )

      # credentials are correct - successful login!
      session[:user_id] = user.id

      redirect_to projects_path   # back to the home page
    else
      #Flash Error message and redirect to login page
      flash[:error] = 'Invalid email or password'

      redirect_to login_path

    end # credentials check
  end # create()

  def destroy
    session[:user_id] = nil  # logs out the user
    redirect_to root_path   # back to the login page
  end

end