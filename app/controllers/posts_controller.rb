class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
    @comments = Comment.where(:post_id => @post.id)
    @comment = Comment.new(post: @post)
  end

end
