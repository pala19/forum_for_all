# frozen_string_literal: true

class PostsController < ActionController::Base
  def index
    @posts = Post.all
  end
end
