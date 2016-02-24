class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include CanCan::ControllerAdditions
  helper :all
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale
  before_filter :set_locale

  helper_method :category_translation
 
  def category_translation(label)
    if session[:locale] == :en
        puts "english"
        @result = Category.find_by_title(label).en if !Category.find_by_title(label).nil?
    else 
      
      puts "russian"
      @result = Category.find_by_title(label).ru if !Category.find_by_title(label).nil?
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
    puts "SET LOCALE"
    I18n.locale = params[:locale] || session[:locale] || I18n.default_locale
    session[:locale] = I18n.locale
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
