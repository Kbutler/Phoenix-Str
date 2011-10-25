class ActorAdminedPageController < ApplicationController

  before_filter :get_title
  def get_title
    @title = "Admin Page"
  end

  before_filter :get_header_img
  def get_header_img
    @header_img    = "header_home.jpg"
  end

  before_filter :get_wallpaper_img
  def get_wallpaper_img
    @wallpaper_img = "wallpaper_home.jpg"
  end

  before_filter :get_body_id
  def get_body_id
    @bodyID        = "page1"
  end

end
