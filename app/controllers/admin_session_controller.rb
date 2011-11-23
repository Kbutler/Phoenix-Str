class AdminSessionController < ApplicationController
  def new
  end

  before_filter :get_session_vars
  def get_session_vars
    @title         = "Session Page"
    @header_img    = "header_home.jpg"
    @wallpaper_img = "wallpaper_home.jpg"
    @bodyID        = "page1"
  end

  def create
    user = AdminedLogin.authenticate(params[:name], params[:password], request.remote_ip )
    if user
      session[:current_user_id] = user.id
      redirect_to admined_page1s_path, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  # "Delete" a login, aka "log the user out"
  def destroy
    # Remove the user id from the session
    @_current_user = session[:current_user_id] = nil
    redirect_to page_page1_path
  end

end
