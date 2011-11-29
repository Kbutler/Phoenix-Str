class ActorViewedPageController < ApplicationController

  before_filter :get_viewed_page_vars
  def get_viewed_page_vars
    @page1_tab_link = page_page1_path
    @page2_tab_link = page_page2_path
    @page3_tab_link = page_page3_path
    @page4_tab_link = page_page4_path
  end

end
