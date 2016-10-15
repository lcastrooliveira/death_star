require 'test_helper'

class SoldadosControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  setup do
    sign_in users(:one)
    @soldado = soldados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:soldados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create soldado" do
    assert_difference('Soldado.count') do
      post :create, soldado: { nome: @soldado.nome, patente_id: @soldado.patente_id }
    end

    assert_redirected_to soldado_path(assigns(:soldado))
  end

  test "should show soldado" do
    get :show, id: @soldado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @soldado
    assert_response :success
  end

  test "should update soldado" do
    patch :update, id: @soldado, soldado: { nome: @soldado.nome, patente_id: @soldado.patente_id }
    assert_redirected_to soldado_path(assigns(:soldado))
  end

  test "should destroy soldado" do
    assert_difference('Soldado.count', -1) do
      delete :destroy, id: @soldado
    end

    assert_redirected_to soldados_path
  end
end
