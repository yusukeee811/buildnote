class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:top]
  before_action :authenticate_admin!

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end
end
