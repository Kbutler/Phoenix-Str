class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_current_car
  def get_current_car
    @current_car = "mini" 
  end

end
