class ProjectsController < ApplicationController
  
  #############ONLY USER'S PROJECTS##############

  before_action :check_if_logged_in, except: [:show]

  def new
    @project = Project.new
  end

  def create
    @project = Project.new project_params
    @project.user_id = @current_user.id
    @project.save

    # Did the above save work, or did it fail due to a validation error?
    if @project.persisted?
      # all good
      redirect_to projects_path
    else
      render :new
    end


  end # create()

  def index
    
  end

  def show
    # fetch_user  # sets @current_user
    @project = Project.find params[:id]
  
  end

  def edit
    @project = Project.find params[:id]

    # Check that the user is allowed to edit this Project
    # (i.e. they created it) - and if not, show them the door
    redirect_to login_path  unless @project.user_id == @current_user.id
  end


  def update

    @project = Project.find params[:id]


    # Don't perform the edit on the item (i.e. don't change the DB)
    # if the logged in user is not the owner
    if @project.user_id != @current_user.id
      redirect_to login_path  # THIS IS NOT ENOUGH - rest of action still tries to run
      return  # this prevents the update below from happening
    end

    # redirect_to login_path and return unless @project.user_id == @current_user.id

    # Check if the update worked - it might fail due to the same validation errors
    # as the create
    if @project.update project_params
      redirect_to mixtape_path(@project)
    else
      render :edit  # show the edit form again, pre-filled (and also with @project.errors)
    end


  end # update



  def destroy
  end


  private

  def project_params
    params.require(:project).permit(:name, :image)
  end
  


  



end