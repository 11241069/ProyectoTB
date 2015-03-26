require 'test_helper'

class AsesorsControllerTest < ActionController::TestCase
  setup do
    @asesor = asesors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asesors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asesor" do
    assert_difference('Asesor.count') do
      post :create, asesor: { ApellidoAsesor: @asesor.ApellidoAsesor, NombreAsesor: @asesor.NombreAsesor, NumeroTelefono: @asesor.NumeroTelefono }
    end

    assert_redirected_to asesor_path(assigns(:asesor))
  end

  test "should show asesor" do
    get :show, id: @asesor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asesor
    assert_response :success
  end

  test "should update asesor" do
    patch :update, id: @asesor, asesor: { ApellidoAsesor: @asesor.ApellidoAsesor, NombreAsesor: @asesor.NombreAsesor, NumeroTelefono: @asesor.NumeroTelefono }
    assert_redirected_to asesor_path(assigns(:asesor))
  end

  test "should destroy asesor" do
    assert_difference('Asesor.count', -1) do
      delete :destroy, id: @asesor
    end

    assert_redirected_to asesors_path
  end
end
