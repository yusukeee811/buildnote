class Admin::PostsController < ApplicationController
  def index
    @posts = Post.all
    @post_comments = PostComment.all
  end

  private

  def post_params
    params.require(:post).permit(:caption, :image)
  end
end
