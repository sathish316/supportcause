require 'test_helper'

class ProtestsControllerTest < ActionController::TestCase
  setup do
    @protest = protests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:protests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create protest" do
    assert_difference('Protest.count') do
      post :create, :protest => @protest.attributes
    end

    assert_redirected_to protest_path(assigns(:protest))
  end

  test "should show protest" do
    get :show, :id => @protest.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @protest.to_param
    assert_response :success
  end

  test "should update protest" do
    put :update, :id => @protest.to_param, :protest => @protest.attributes
    assert_redirected_to protest_path(assigns(:protest))
  end

  test "should destroy protest" do
    assert_difference('Protest.count', -1) do
      delete :destroy, :id => @protest.to_param
    end

    assert_redirected_to protests_path
  end
end
