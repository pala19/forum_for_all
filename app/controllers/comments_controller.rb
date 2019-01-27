# frozen_string_literal: true

class CommentsController < ApplicationController
  def create
    @comment = Comment.new(
      params.require(:comment).permit(:title, :content, :post_id)
                 .merge(user_id: current_user.id)
    )
    flash[:notice] = if @comment.save
                       'Komentarz opublikowany'
                     else
                       @comment.errors.full_messages.join('. ')
                     end
    redirect_to posts_path(@comment.post_id)
  end
end
