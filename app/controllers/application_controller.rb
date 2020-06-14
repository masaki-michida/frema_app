class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  

  private
  def production?
    Rails.env.production?
  end


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname,:familyname,:firstname,:family_ch,:first_ch,:birth,:to_familyname,:to_firstname,:to_family_ch,:to_first_ch,:zip,:prefecture,:adress_city,:adress_street,:adress_building,:phone])
  end

  def after_sign_in_path_for(resource)
    user_path(resource.id)
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == Rails.application.credentials[:basic_auth][:user] &&
      password == Rails.application.credentials[:basic_auth][:pass]
    end
  end
end
