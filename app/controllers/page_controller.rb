class PageController < ApplicationController
  http_basic_authenticate_with :name => "phoenix", :password => "phoenix"
  def page1
  end

  def page2
  end

  def page3
  end

  def page4
  end

end
