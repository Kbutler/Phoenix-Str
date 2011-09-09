require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get page1" do
    get :page1
    assert_response :success
  end

  test "should get page2" do
    get :page2
    assert_response :success
  end

  test "should get page3" do
    get :page3
    assert_response :success
  end

  test "should get page4" do
    get :page4
    assert_response :success
  end

end
