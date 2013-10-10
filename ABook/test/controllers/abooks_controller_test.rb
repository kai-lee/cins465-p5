require 'test_helper'

class AbooksControllerTest < ActionController::TestCase
  setup do
    @abook = abooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:abooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create abook" do
    assert_difference('Abook.count') do
      post :create, abook: { email: @abook.email, fav_color: @abook.fav_color, first_name: @abook.first_name, last_name: @abook.last_name, zipcode: @abook.zipcode }
    end

    assert_redirected_to abook_path(assigns(:abook))
  end

  test "should show abook" do
    get :show, id: @abook
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @abook
    assert_response :success
  end

  test "should update abook" do
    patch :update, id: @abook, abook: { email: @abook.email, fav_color: @abook.fav_color, first_name: @abook.first_name, last_name: @abook.last_name, zipcode: @abook.zipcode }
    assert_redirected_to abook_path(assigns(:abook))
  end

  test "should destroy abook" do
    assert_difference('Abook.count', -1) do
      delete :destroy, id: @abook
    end

    assert_redirected_to abooks_path
  end
end
