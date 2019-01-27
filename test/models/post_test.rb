require 'test_helper'

class PostTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers
  test "create new post" do
    post = Post.new(user_id: 1, title: "testa", content: "testb")
    assert post.valid?
  end

  test "post shouldn't be saved without an author" do
    post = Post.new(title: "test", content: "test")
    assert_not post.valid?
  end

  test "post shouldn't be saved without title, content or author" do
    post = Post.new
    assert_not post.valid?
  end
end