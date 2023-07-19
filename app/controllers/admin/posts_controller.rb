class Admin::PostsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @posts = Post.all
  end

  private

  def post_params
    params.require(:post).permit(:caption, :image)
  end
end
