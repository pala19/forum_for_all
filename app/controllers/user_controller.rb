class UserController < ApplicationController
  before_action :authenticate_user!

  def index
    @post = Post.where(:user_id => current_user.id)
  end
end
