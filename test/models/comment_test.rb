# frozen_string_literal: true

require 'test_helper'

class CommentTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers
  test 'create new comment' do
    comment = Comment.new(user_id: 1, post_id: 1, content: 'testowy')
    assert comment.valid?
  end

  test "comment shouldn't be saved without an author and post" do
    comment = Comment.new(content: 'test')
    assert_not comment.valid?
  end

  test "post shouldn't be saved without content, author and post" do
    comment = Comment.new
    assert_not comment.valid?
  end
end
