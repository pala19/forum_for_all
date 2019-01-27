require 'test_helper'

class UserControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers
  test "test_index" do
    get :index
    assert_redirected_to new_user_session_path
  end

end