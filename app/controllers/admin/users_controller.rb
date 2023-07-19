class Admin::UsersController < ApplicationController
  before_action :authenticate_admin!
  before_action :ensure_normal_user, only: [:withdraw]

  def show
    @user = User.find(params[:id])
  end

  def unsubscribe
    @user = User.find(params[:id])
  end

  def withdraw
    @user = User.find(params[:id])
    if @user.update_columns(status: :force_withdrawal)
      @user.delete_related_data # 関連するデータの削除
      redirect_to admin_root_path, notice: "ユーザーを強制退会させました"
    else
      flash.now[:alert] = "強制退会処理に失敗しました"
      render :unsubscribe
    end
  end

  def ensure_normal_user
    @user = User.find(params[:id])
    if @user.email == 'guest@example.com'
      redirect_to admin_root_path, alert: 'ゲストユーザーは強制退会させることはできません'
    end
  end

  def posts
    @user = User.find(params[:id])
    @posts = @user.posts
    @post_comments = PostComment.all
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :image)
  end
end
