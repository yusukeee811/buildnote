class Public::PostsController < ApplicationController
  def index
    @posts = Post.all
    @post_comment = PostComment.new
    @post_comments = PostComment.all
  end

  def show
    @post = Post.find(params[:id])
    @post_comment = PostComment.new
    @post_comments = PostComment.all
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
      @posts = Post.all
      flash.now[:notice] = "投稿削除できません"
      render :index
    end
  end

  def hashtag
    @tag = Hashtag.find_by(hashname: params[:name])
    @posts = @tag.posts.order(created_at: :desc)
    @post_comment = PostComment.new
    @post_comments = PostComment.all
  end

  private

  def post_params
    params.require(:post).permit(:caption, :image)
  end
end
