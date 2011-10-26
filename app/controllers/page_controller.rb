class PageController < ActorViewedPageController
  http_basic_authenticate_with :name => "phoenix", :password => "phoenix"
   
  before_filter :para1
  def para1
    @para1 = AdminedPage1.all
  end

  def page1
    if params[:set_locale]
      redirect_to store_path(locale: params[:set_locale])
    end

    @title         = "Home"
    @header_img    = "header_home.jpg"
    @wallpaper_img = "wallpaper_home.jpg"
    @bodyID        = "page1"
    @admined_page1s = AdminedPage1.all
  end

  def page2
    @title         = "Kurse"
    @header_img    = "header_kurse.jpg"
    @wallpaper_img = "wallpaper_kurse.jpg"
    @bodyID        = "page2"
    @welcome_img   = "welcome.gif"
    @signature_img = "kentenich_signature.gif"
  end

  def page3
    @title         = "Kentenich"
    @header_img    = "header_home.jpg"
    @wallpaper_img = "wallpaper_kentenich.jpg"
    @bodyID        = "page3"
  end

  def page4
    @title         = "Praxisteam"
    @header_img    = "header_praxisteam.jpg"
    @wallpaper_img = "wallpaper_praxisteam.jpg"
    @bodyID        = "page4"
  end

end
