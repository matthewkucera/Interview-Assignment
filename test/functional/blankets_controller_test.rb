require 'test_helper'

class BlanketsControllerTest < ActionController::TestCase
  setup do
    @blanket = blankets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blankets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blanket" do
    assert_difference('Blanket.count') do
      post :create, :blanket => @blanket.attributes
    end

    assert_redirected_to blanket_path(assigns(:blanket))
  end

  test "should show blanket" do
    get :show, :id => @blanket.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @blanket.to_param
    assert_response :success
  end

  test "should update blanket" do
    put :update, :id => @blanket.to_param, :blanket => @blanket.attributes
    assert_redirected_to blanket_path(assigns(:blanket))
  end

  test "should destroy blanket" do
    assert_difference('Blanket.count', -1) do
      delete :destroy, :id => @blanket.to_param
    end

    assert_redirected_to blankets_path
  end
end
