require 'test_helper'

class ServicerequestsControllerTest < ActionController::TestCase
  setup do
    @servicerequest = servicerequests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servicerequests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servicerequest" do
    assert_difference('Servicerequest.count') do
      post :create, :servicerequest => @servicerequest.attributes
    end

    assert_redirected_to servicerequest_path(assigns(:servicerequest))
  end

  test "should show servicerequest" do
    get :show, :id => @servicerequest.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @servicerequest.to_param
    assert_response :success
  end

  test "should update servicerequest" do
    put :update, :id => @servicerequest.to_param, :servicerequest => @servicerequest.attributes
    assert_redirected_to servicerequest_path(assigns(:servicerequest))
  end

  test "should destroy servicerequest" do
    assert_difference('Servicerequest.count', -1) do
      delete :destroy, :id => @servicerequest.to_param
    end

    assert_redirected_to servicerequests_path
  end
end
