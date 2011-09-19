class PageController < ApplicationController
  http_basic_authenticate_with :name => "phoenix", :password => "phoenix"
    
  @@locallogo_img      = "logo.gif"
  @@localfavicon_img   = 'favicon.ico'
  @@fullName           = "Dr. Forename Surname"
  @@address            = "Add Address Here"
  @@jobTitleP1         = "Praxis fur Frauenheilkunde "
  @@jobTitleP2         = "Geburtshilfe"
  @@phoneNum           = "Tel: +11 123 456 789"
  @@faxNum             = "Fax: +22 123 456 789"

  def page1
    @title         = "Home"
    @header_img    = "header_home.jpg"
    @wallpaper_img = "wallpaper_home.jpg"
    @logo_img      = @@locallogo_img
    @favicon_img   = @@localfavicon_img
    @fullName      = @@fullName
    @address       = @@address
    @phoneNum      = @@phoneNum
    @faxNum        = @@faxNum
    @jobTitleP1    = @@jobTitleP1
    @jobTitleP2    = @@jobTitleP2
  end

  def page2
    @title         = "Kurse"
    @header_img    = "header_kurse.jpg"
    @wallpaper_img = "wallpaper_kurse.jpg"
    @welcome_img   = "welcome.gif"
    @signature_img = "kentenich_signature.gif"
    @logo_img      = @@locallogo_img
    @favicon_img   = @@localfavicon_img
    @fullName      = @@fullName
    @address       = @@address
    @phoneNum      = @@phoneNum
    @faxNum        = @@faxNum
    @jobTitleP1    = @@jobTitleP1
    @jobTitleP2    = @@jobTitleP2
  end

  def page3
    @title         = "Kentenich"
    @header_img    = "header_home.jpg"
    @wallpaper_img = "wallpaper_kentenich.jpg"
    @logo_img      = @@locallogo_img
    @favicon_img   = @@localfavicon_img
    @fullName      = @@fullName
    @address       = @@address
    @phoneNum      = @@phoneNum
    @faxNum        = @@faxNum
    @jobTitleP1    = @@jobTitleP1
    @jobTitleP2    = @@jobTitleP2
  end

  def page4
    @title         = "Praxisteam"
    @header_img    = "header_praxisteam.jpg"
    @wallpaper_img = "wallpaper_praxisteam.jpg"
    @logo_img      = @@locallogo_img
    @favicon_img   = @@localfavicon_img
    @fullName      = @@fullName
    @address       = @@address
    @phoneNum      = @@phoneNum
    @faxNum        = @@faxNum
    @jobTitleP1    = @@jobTitleP1
    @jobTitleP2    = @@jobTitleP2
  end

end
