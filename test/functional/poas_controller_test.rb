require 'test_helper'

class PoasControllerTest < ActionController::TestCase
  setup do
    @poa = poas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poa" do
    assert_difference('Poa.count') do
      post :create, poa: @poa.attributes
    end

    assert_redirected_to poa_path(assigns(:poa))
  end

  test "should show poa" do
    get :show, id: @poa.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poa.to_param
    assert_response :success
  end

  test "should update poa" do
    put :update, id: @poa.to_param, poa: @poa.attributes
    assert_redirected_to poa_path(assigns(:poa))
  end

  test "should destroy poa" do
    assert_difference('Poa.count', -1) do
      delete :destroy, id: @poa.to_param
    end

    assert_redirected_to poas_path
  end
end
