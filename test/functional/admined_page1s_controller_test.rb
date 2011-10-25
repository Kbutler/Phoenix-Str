require 'test_helper'

class AdminedPage1sControllerTest < ActionController::TestCase
  setup do
    @admined_page1 = admined_page1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admined_page1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admined_page1" do
    assert_difference('AdminedPage1.count') do
      post :create, admined_page1: @admined_page1.attributes
    end

    assert_redirected_to admined_page1_path(assigns(:admined_page1))
  end

  test "should show admined_page1" do
    get :show, id: @admined_page1.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admined_page1.to_param
    assert_response :success
  end

  test "should update admined_page1" do
    put :update, id: @admined_page1.to_param, admined_page1: @admined_page1.attributes
    assert_redirected_to admined_page1_path(assigns(:admined_page1))
  end

  test "should destroy admined_page1" do
    assert_difference('AdminedPage1.count', -1) do
      delete :destroy, id: @admined_page1.to_param
    end

    assert_redirected_to admined_page1s_path
  end
end
