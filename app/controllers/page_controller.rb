class PageController < ApplicationController
  http_basic_authenticate_with :name => "phoenix", :password => "phoenix"
    
  @@locallogo_img      = "logo.gif"
  @@localfavicon_img   = 'favicon.ico'

  def page1
    @title         = "Home"
    @header_img    = "try2.jpg"
    @wallpaper_img = "wallpaper_home.jpg"
    @logo_img      = @@locallogo_img
    @favicon_img   = @@localfavicon_img
  end

  def page2
    @title         = "Kurse"
    @header_img    = "header_kurse.jpg"
    @wallpaper_img = "wallpaper_kurse.jpg"
    @logo_img      = @@locallogo_img
    @favicon_img   = @@localfavicon_img
  end

  def page3
    @title         = "Kentenich"
    @header_img    = "header_kentenich.jpg"
    @wallpaper_img = "wallpaper_kentenich.jpg"
    @logo_img      = @@locallogo_img
    @favicon_img   = @@localfavicon_img
  end

  def page4
    @title         = "Praxisteam"
    @header_img    = "header_praxisteam.jpg"
    @wallpaper_img = "wallpaper_praxisteam.jpg"
    @logo_img      = @@locallogo_img
    @favicon_img   = @@localfavicon_img
  end

end
