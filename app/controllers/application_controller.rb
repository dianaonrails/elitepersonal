class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include CanCan::ControllerAdditions
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

 
  protected
  def authenticate_admin_user!
    redirect_to new_user_session_path unless current_user.try(:is_admin?)
  end

  def current_admin_user
    return nil if user_signed_in? && !current_user.admin?
    current_user
  end
  
  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] }, :email, :password) }
  end
end
