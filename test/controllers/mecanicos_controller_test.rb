require 'test_helper'

class MecanicosControllerTest < ActionController::TestCase
  setup do
    @mecanico = mecanicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mecanicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mecanico" do
    assert_difference('Mecanico.count') do
      post :create, mecanico: { ApellidoMecanico: @mecanico.ApellidoMecanico, NombreMecanico: @mecanico.NombreMecanico, NumeroTelefono: @mecanico.NumeroTelefono, asesor_id: @mecanico.asesor_id }
    end

    assert_redirected_to mecanico_path(assigns(:mecanico))
  end

  test "should show mecanico" do
    get :show, id: @mecanico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mecanico
    assert_response :success
  end

  test "should update mecanico" do
    patch :update, id: @mecanico, mecanico: { ApellidoMecanico: @mecanico.ApellidoMecanico, NombreMecanico: @mecanico.NombreMecanico, NumeroTelefono: @mecanico.NumeroTelefono, asesor_id: @mecanico.asesor_id }
    assert_redirected_to mecanico_path(assigns(:mecanico))
  end

  test "should destroy mecanico" do
    assert_difference('Mecanico.count', -1) do
      delete :destroy, id: @mecanico
    end

    assert_redirected_to mecanicos_path
  end
end
