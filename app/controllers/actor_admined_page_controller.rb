class ActorAdminedPageController < ApplicationController

  before_filter :get_admined_vars
  def get_admined_vars
    @title         = "Admin Page"
    @header_img    = "header_home.jpg"
    @wallpaper_img = "wallpaper_home.jpg"
    @bodyID        = "page1"

    @page1_tab_link = admined_page1s_path
    @page2_tab_link = admined_page1s_path
    @page3_tab_link = admined_page1s_path
    @page4_tab_link = admined_page1s_path
   end


  before_filter :require_login
 
  private
 
  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to log_in_path # halts request cycle
    end
  end
 
  # The logged_in? method simply returns true if the user is logged
  # in and false otherwise. It does this by "booleanizing" the
  # current_user method we created previously using a double ! operator.
  # Note that this is not common in Ruby and is discouraged unless you
  # really mean to convert something into true or false.
  def logged_in?
    !!current_user
  end

  private
 
  # Finds the User with the ID stored in the session with the key
  # :current_user_id This is a common way to handle user login in
  # a Rails application; logging in sets the session value and
  # logging out removes it.
  def current_user
    @_current_user ||= session[:current_user_id] &&
      AdminedLogin.find_by_id(session[:current_user_id])
  end

end
