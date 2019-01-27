require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers
  test "test_index" do
    get :index
    assert_response :success
  end

end