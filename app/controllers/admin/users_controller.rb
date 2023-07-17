class Admin::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
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

  def withdraw
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
