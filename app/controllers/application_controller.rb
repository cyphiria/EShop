class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def after_sign_in_path_for(resource)
    dashboard_path
  end

  def after_edit_user_path_for(resource)
    dashboard_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :city, :hobbies])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :city, :hobbies])
  end
end
