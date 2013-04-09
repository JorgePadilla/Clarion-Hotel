require 'test_helper'

class InglesControllerTest < ActionController::TestCase
  setup do
    @ingle = ingles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ingles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ingle" do
    assert_difference('Ingle.count') do
      post :create, ingle: @ingle.attributes
    end

    assert_redirected_to ingle_path(assigns(:ingle))
  end

  test "should show ingle" do
    get :show, id: @ingle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ingle
    assert_response :success
  end

  test "should update ingle" do
    put :update, id: @ingle, ingle: @ingle.attributes
    assert_redirected_to ingle_path(assigns(:ingle))
  end

  test "should destroy ingle" do
    assert_difference('Ingle.count', -1) do
      delete :destroy, id: @ingle
    end

    assert_redirected_to ingles_path
  end
end
