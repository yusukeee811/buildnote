class Admin::HomesController < ApplicationController
  def top
    @users = User.all.page(params[:page]).per(10)
  end
end
