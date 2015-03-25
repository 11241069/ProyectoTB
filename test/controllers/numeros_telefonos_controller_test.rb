require 'test_helper'

class NumerosTelefonosControllerTest < ActionController::TestCase
  setup do
    @numeros_telefono = numeros_telefonos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:numeros_telefonos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create numeros_telefono" do
    assert_difference('NumerosTelefono.count') do
      post :create, numeros_telefono: { Numero: @numeros_telefono.Numero }
    end

    assert_redirected_to numeros_telefono_path(assigns(:numeros_telefono))
  end

  test "should show numeros_telefono" do
    get :show, id: @numeros_telefono
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @numeros_telefono
    assert_response :success
  end

  test "should update numeros_telefono" do
    patch :update, id: @numeros_telefono, numeros_telefono: { Numero: @numeros_telefono.Numero }
    assert_redirected_to numeros_telefono_path(assigns(:numeros_telefono))
  end

  test "should destroy numeros_telefono" do
    assert_difference('NumerosTelefono.count', -1) do
      delete :destroy, id: @numeros_telefono
    end

    assert_redirected_to numeros_telefonos_path
  end
end
