class Public::PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to posts_path
    else
      flash.now[:notice] = "投稿できません"
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      redirect_to posts_path, notice:"投稿削除しました"
    else
      flash.now[:notice] = "投稿削除できません"
  end

  private

  def post_params
    params.require(:post).permit(:caption, :image)
  end
end
