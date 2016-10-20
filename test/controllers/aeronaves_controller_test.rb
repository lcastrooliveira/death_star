require 'test_helper'

class AeronavesControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  setup do
    sign_in users(:one)
    @aeronave = aeronaves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aeronaves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aeronave" do
    assert_difference('Aeronave.count') do
      post :create, aeronave: { modelo: @aeronave.modelo, uuid: @aeronave.uuid }
    end

    assert_redirected_to aeronave_path(assigns(:aeronave))
  end

  test "should show aeronave" do
    get :show, id: @aeronave
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aeronave
    assert_response :success
  end

  test "should update aeronave" do
    patch :update, id: @aeronave, aeronave: { modelo: @aeronave.modelo, uuid: @aeronave.uuid }
    assert_redirected_to aeronave_path(assigns(:aeronave))
  end

  test "should destroy aeronave" do
    assert_difference('Aeronave.count', -1) do
      delete :destroy, id: @aeronave
    end

    assert_redirected_to aeronaves_path
  end
end
