class PagesController < ApplicationController

  def home
    # fetch_user  # sets @current_user
    @projects = Project.all
  end

  def show
    # fetch_user  # sets @current_user
    @project = Project.find params[:id]
  end
end