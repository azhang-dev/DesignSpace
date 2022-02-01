class LibrariesController < ApplicationController

  before_action :check_if_logged_in, except: [:index, :show]

  def new
    @library = Library.new
  end

  def create
    # library = Library.create library_params
    # library.user_id = @current_user.id  # OR: library.user = @current_user
    # library.save  # NOT saved to the DB until we do this!

    @library = Library.new library_params
    @library.user_id = @current_user.id
    @library.save

    # Did the above save work, or did it fail due to a validation error?
    if @library.persisted?
      # all good
      redirect_to libraries_path
    else
      # redirect_to new_library_path # this empties the form!

      # We can render the template of some OTHER action here
      # In this case we are in :create, but we are asking to render
      # the :new template
      # This will provide the template with the already-filled out
      # form fields, so the user doesn't have to type out all the
      # correct ones again
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
    # (i.e. they created it) - and if not, show them the door
    redirect_to login_path  unless @library.user_id == @current_user.id
  end


  def update

    @library = Library.find params[:id]


    # Don't perform the edit on the item (i.e. don't change the DB)
    # if the logged in user is not the owner
    if @library.user_id != @current_user.id
      redirect_to login_path  # THIS IS NOT ENOUGH - rest of action still tries to run
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