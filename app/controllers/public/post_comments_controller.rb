class Public::PostCommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @post_comment = current_user.post_comments.new(post_comment_params)
    @post_comment.post_id = @post.id
    @post_comment.save
    redirect_to posts_path
  end

  def destroy
    @post = Post.find(params[:post_id])
    @post_comment = @post.post_comments.find(params[:id])
    @post_comment.destroy
    redirect_to posts_path
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end
end
