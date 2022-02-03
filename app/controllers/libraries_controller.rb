class LibrariesController < ApplicationController

  before_action :check_if_logged_in, except: [:index, :show]

  def add_project
    @project = Project.find params[:project_id]
    @library = Library.find params[:library_id]

    #avoid duplicates
    unless @library.projects.include? @project
      @library.projects << @project 
    end

    redirect_to  library_path(@library)
  end

  def new
    @library = Library.new
  end

  def create
  
    @library = Library.new library_params
    @library.user_id = @current_user.id

    if params[:library][:image].present?
      #forward the uploaded image on the Cloudinary (using the gem):
      response = Cloudinary::Uploader.upload params[:library][:image]
      #p response # so we can see what the response look like
      @library.image = response['public_id'] # add to the item we are saving
    end # upload check


    @library.save

    # Did the above save work, or did it fail due to a validation error?
    if @library.persisted?
      # all good
      redirect_to libraries_path
    else
      # redirect_to new_library_path # this empties the form!
      render :new
    end
  end # create()

  def index
    @libraries = Library.all
  end

  def show
    @library = Library.find params[:id]
    
  end

  def edit
    @library = Library.find params[:id]

    # Check that the user is allowed to edit this Library
    redirect_to login_path  unless @library.user_id == @current_user.id
  end


  def update

    @library = Library.find params[:id]

    # if the logged in user is not the owner
    if @library.user_id != @current_user.id
      redirect_to login_path 
      return  # this prevents the update below from happening
    end

    # redirect_to login_path and return unless @library.user_id == @current_user.id

    # Check if the update worked - it might fail due to the same validation errors
    # as the create
    if @library.update library_params
      redirect_to library_path(@library)
    else
      render :edit  # show the edit form again, pre-filled (and also with @library.errors)
    end


  end # update



  def destroy
  end


  private

  def library_params
    params.require(:library).permit(:name, :image)
  end


end