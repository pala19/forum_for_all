# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comments = Comment.where(post_id: @post.id)
    @comment = Comment.new(post: @post)
  end

  def create
    @post = Post.new(
      params.require(:post).permit(:title, :content)
          .merge(user_id: current_user.id)
    )
    flash[:notice] = if @post.save
                       'Post opublikowany'
                     else
                       @post.errors.full_messages.join('. ')
                     end
    redirect_to user_index_path
  end
end
