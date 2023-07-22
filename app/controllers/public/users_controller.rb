class Public::UsersController < ApplicationController
  before_action :authenticate_user!, except: [:create_guest]
  before_action :is_matching_login_user, only: [:edit, :update, :unsubscribe, :withdraw, :likes]
  before_action :ensure_normal_user, only: [:update, :withdraw]
  before_action :set_q, only: [:search]

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user), notice:"ユーザー情報を更新しました"
    else
      @error_message = @user.errors.full_messages.join(', ')
      render :edit
    end
  end

  def unsubscribe
    @user = User.find(params[:id])
  end

  def withdraw
    @user = User.find(params[:id])
    if @user.update_columns(status: :withdrawal, email: nil, name: nil) #ユーザー名、メールアドレスを削除する
      @user.delete_related_data # 関連するデータの削除
      reset_session
      redirect_to root_path, notice: "退会が完了しました"
    else
      flash.now[:alert] = "退会処理に失敗しました"
      render :unsubscribe
    end
  end

  def create_guest
    @user = User.guest
    sign_in @user
    redirect_to posts_path
  end

  def ensure_normal_user
    if current_user.email == 'guest@example.com'
      redirect_to user_path(current_user), alert: 'ゲストユーザーの更新・退会はできません'
    end
  end

  def likes
    @user = User.find(params[:id])
    @post_comment = PostComment.new
    #ユーザーがいいねした投稿を全て取得
    likes = PostLike.where(user_id: @user.id).pluck(:post_id)
    @liked_posts = Post.where(id: likes)
  end

  def search
    @user_results = @q.result
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :image)
  end

  def is_matching_login_user
    user = User.find(params[:id])
    unless user.id == current_user.id
      redirect_to posts_path
    end
  end

  def set_q
    @q = User.ransack(params[:q])
  end

end
