class Public::UsersController < ApplicationController
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
      redirect_to user_path(@user), notice:"ユーザー情報を更新しました。"
    else
      flash.now[:notice] = "ユーザー情報の更新に失敗しました。"
      render :edit
    end
  end

  def unsubscribe
    @user = User.find(params[:id])
  end

  def withdraw
    @user = current_user
    if @user.update(status: :withdrawal)
      @user.delete_related_data # 関連するデータの削除
      @user.update(email: '', name: '') # ユーザー名、メールアドレスを削除する
      reset_session
      redirect_to root_path, notice: "退会が完了しました。"
    else
      flash.now[:notice] = "退会処理に失敗しました。"
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
      redirect_to user_path(current_user), notice: 'ゲストユーザーの更新・削除はできません。'
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

  def set_q
    @q = User.ransack(params[:q])
  end

end
