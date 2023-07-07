class Public::UsersController < ApplicationController
  def show
  end

  def edit
  end

  def update
  end

  def unsubscribe
  end

  def withdraw
  end

  def create_guest
    @user = User.guest
    sign_in @user
    redirect_to posts_path
  end

end
