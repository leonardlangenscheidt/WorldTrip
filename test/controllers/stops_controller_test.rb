require 'test_helper'

class StopsControllerTest < ActionController::TestCase
  setup do
    @stop = stops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stop" do
    assert_difference('Stop.count') do
      post :create, stop: { city: @stop.city, country: @stop.country, latitude: @stop.latitude, longitude: @stop.longitude, visited: @stop.visited }
    end

    assert_redirected_to stop_path(assigns(:stop))
  end

  test "should show stop" do
    get :show, id: @stop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stop
    assert_response :success
  end

  test "should update stop" do
    patch :update, id: @stop, stop: { city: @stop.city, country: @stop.country, latitude: @stop.latitude, longitude: @stop.longitude, visited: @stop.visited }
    assert_redirected_to stop_path(assigns(:stop))
  end

  test "should destroy stop" do
    assert_difference('Stop.count', -1) do
      delete :destroy, id: @stop
    end

    assert_redirected_to stops_path
  end
end
