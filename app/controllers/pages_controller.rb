class PagesController < ApplicationController


  def home
    # fetch_user  # sets @current_user
    @projects = Project.all
    
  end

  


  



end