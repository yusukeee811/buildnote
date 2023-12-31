# frozen_string_literal: true

class Public::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  before_action :reject_invalid_user, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  def after_sign_in_path_for(resource)
    posts_path
  end

  def after_sign_out_path_for(resource)
     new_user_session_path
  end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  # devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  def reject_invalid_user
    user = User.find_by(email: params[:user][:email])
    return unless user

    return if user.valid_password?(params[:user][:password]) && user.active_for_authentication?

    alert_message = if user.status == "force_withdrawal"
                      "このアカウントは停止されました"
                    else
                      "メールアドレスまたはパスワードが違います"
                    end
    redirect_to request.referer, alert: alert_message
  end

end
