class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include CanCan::ControllerAdditions
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale
  helper_method :general_translation
 
  def general_translation(label)
   
    if I18n.locale = :en

      if GeneralTranslation.find_by_label(label).nil?
        @result = ''
      else  
        @result = GeneralTranslation.find_by_label(label).en 
      end  
    else
      @result = GeneralTranslation.find_by_label(label).ru 
    end
      
    return @result
  end  

  def change_locale
    l = params[:locale].to_s.strip.to_sym
    l = I18n.default_locale unless I18n.available_locales.include?(l)
    cookies.permanent[:educator_locale] = l
    redirect_to request.referer || root_url
  end

  def set_locale
    if cookies[:educator_locale] && I18n.available_locales.include?(cookies[:educator_locale].to_sym)
      l = cookies[:educator_locale].to_sym
    else
      l = I18n.default_locale
      cookies.permanent[:educator_locale] = l
    end
    I18n.locale = l
  end

 
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
