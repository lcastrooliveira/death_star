require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  def setup
    sign_in users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
