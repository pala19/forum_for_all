# frozen_string_literal: true

require 'test_helper'

class UserTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers
  test 'create new user' do
    user = User.new(nick: 'test2', email: 'test1@test.com', password: 'testowy')
    assert user.valid?
  end

  test "user shouldn't be saved without nick" do
    user = User.new(email: 'test@test.com', password: 'testowy')
    assert_not user.valid?
  end

  test "post shouldn't be saved without nick, email and password" do
    user = User.new
    assert_not user.valid?
  end
end
