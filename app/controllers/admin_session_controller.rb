class AdminSessionController < ApplicationController
  def new
  end
  
  def create
    user = AdminedLogin.authenticate(params[:name], params[:password], request.remote_ip )
    if user
      session[:user_id] = user.id
      redirect_to admined_page1s_path, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end
end
