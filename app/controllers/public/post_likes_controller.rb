class Public::PostLikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    post_like = current_user.post_likes.new(post_id: @post.id)
    post_like.save
  end

  def destroy
    @post = Post.find(params[:post_id])
    post_like = current_user.post_likes.find_by(post_id: @post.id)
    post_like.destroy
  end
end
