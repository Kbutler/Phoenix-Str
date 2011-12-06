require 'test_helper'

class PageControllerTest < ActionController::TestCase

  test "should get page1" do
    get :page1
    assert_response :success
  end

  test "should get page1 en" do
    get( :page1, {'locale' => "en"})
    assert_response :success
  end

  test "should get page1 de" do
    get( :page1, {'locale' => "de"})
    assert_response :success
  end

  test "should get page2" do
    get :page2
    assert_response :success
  end

  test "should get page2 en" do
    get( :page2, {'locale' => "en"})
    assert_response :success
  end

  test "should get page2 de" do
    get( :page2, {'locale' => "de"})
    assert_response :success
  end

  test "should get page3" do
    get :page3
    assert_response :success
  end

  test "should get page3 en" do
    get( :page3, {'locale' => "en"})
    assert_response :success
  end

  test "should get page3 de" do
    get( :page3, {'locale' => "de"})
    assert_response :success
  end

  test "should get page4" do
    get :page4
    assert_response :success
  end

  test "should get page4 en" do
    get( :page4, {'locale' => "en"})
    assert_response :success
  end

  test "should get page4 de" do
    get( :page4, {'locale' => "de"})
    assert_response :success
  end

end
