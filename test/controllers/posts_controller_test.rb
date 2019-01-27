require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers
  test "get post index" do
    get :index
    assert_response :success
  end



end