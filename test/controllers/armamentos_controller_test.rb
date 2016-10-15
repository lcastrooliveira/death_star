require 'test_helper'

class ArmamentosControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  setup do
    sign_in users(:one)
    @armamento = armamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:armamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create armamento" do
    assert_difference('Armamento.count') do
      post :create, armamento: { descricao: @armamento.descricao, nome: @armamento.nome, poder_destruicao: @armamento.poder_destruicao, quantidade: @armamento.quantidade }
    end

    assert_redirected_to armamento_path(assigns(:armamento))
  end

  test "should show armamento" do
    get :show, id: @armamento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @armamento
    assert_response :success
  end

  test "should update armamento" do
    patch :update, id: @armamento, armamento: { descricao: @armamento.descricao, nome: @armamento.nome, poder_destruicao: @armamento.poder_destruicao, quantidade: @armamento.quantidade }
    assert_redirected_to armamento_path(assigns(:armamento))
  end

  test "should destroy armamento" do
    assert_difference('Armamento.count', -1) do
      delete :destroy, id: @armamento
    end

    assert_redirected_to armamentos_path
  end
end
