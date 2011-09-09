class PageController < ApplicationController
  http_basic_authenticate_with :name => "phoenix", :password => "phoenix"
  def page1
    @title = "Page 1"
    @header_img = "header_home.jpg"
  end

  def page2
    @title = "Page 2"
    @header_img = "header_kurse.jpg"
  end

  def page3
    @title = "Page 3"
    @header_img = "header_kentenich.jpg"
  end

  def page4
    @title = "Page 4"
    @header_img = "header_praxisteam.jpg"
  end

end
