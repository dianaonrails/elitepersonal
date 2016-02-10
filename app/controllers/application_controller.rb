class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include CanCan::ControllerAdditions
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

 
  protected
  def compare_candidates(client_request)
    #filter params
    @client_request = ClientRequest.find(client_request)
    
    @candidates = Candidate.gender(@client_request.gender)
    .driving_licence(@client_request.driving_license).car(@client_request.car).nationality(@client_request.nationality)
    .citizenship(@client_request.citizenship).category(@client_request.category_id)
    .level_education(@client_request.level_education_id).languages(@client_request.language_ids).years_experience(@client_request.years_experience)
    .availability(@client_request.availability_ids).available_work(@client_request.available_work_ids).uniq
    #params.each do |key, value|
      #  @candidates = @candidates.public_send(key, value) if value.present?
      #end
      return @candidates
  end
  
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
