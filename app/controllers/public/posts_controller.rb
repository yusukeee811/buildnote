class Public::PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    # フォロー中のユーザーと自分の投稿を表示
    followed_user_ids = current_user.followings.pluck(:id)
    followed_user_ids << current_user.id
    @posts = Post.where(user_id: followed_user_ids)
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
      redirect_to posts_path, notice:"投稿しました"
    else
      @error_message = @post.errors.full_messages.join(', ')
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      redirect_to posts_path, notice:"投稿削除しました"
    else
      @posts = Post.all
      flash.now[:alert] = "投稿削除に失敗しました"
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
