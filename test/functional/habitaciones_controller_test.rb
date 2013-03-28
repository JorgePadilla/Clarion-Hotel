require 'test_helper'

class HabitacionesControllerTest < ActionController::TestCase
  setup do
    @habitacione = habitaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:habitaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create habitacione" do
    assert_difference('Habitacione.count') do
      post :create, habitacione: @habitacione.attributes
    end

    assert_redirected_to habitacione_path(assigns(:habitacione))
  end

  test "should show habitacione" do
    get :show, id: @habitacione
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @habitacione
    assert_response :success
  end

  test "should update habitacione" do
    put :update, id: @habitacione, habitacione: @habitacione.attributes
    assert_redirected_to habitacione_path(assigns(:habitacione))
  end

  test "should destroy habitacione" do
    assert_difference('Habitacione.count', -1) do
      delete :destroy, id: @habitacione
    end

    assert_redirected_to habitaciones_path
  end
end
