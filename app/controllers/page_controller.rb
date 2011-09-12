class PageController < ApplicationController
  http_basic_authenticate_with :name => "phoenix", :password => "phoenix"
  def page1
    @title         = "Home"
    @header_img    = "header_home.jpg"
    @wallpaper_img = "wallpaper_home.png"
  end

  def page2
    @title         = "Kurse"
    @header_img    = "header_kurse.jpg"
    @wallpaper_img = "wallpaper_kurse.png"
  end

  def page3
    @title         = "Kentenich"
    @header_img    = "header_kentenich.jpg"
    @wallpaper_img = "wallpaper_kentenich.png"
  end

  def page4
    @title         = "Praxisteam"
    @header_img    = "header_praxisteam.jpg"
    @wallpaper_img = "wallpaper_praxisteam.png"
  end

end
