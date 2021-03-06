class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    current_user
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :role, :password, :password_confirmation, :current_password) }
  end
  
  def error_messages(records)
    err = "Error! "
    records.errors.each do |attribute, message|
      err = err + " " + message 
    end
    return err
  end
end
