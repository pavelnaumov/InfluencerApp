class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

    # For additional fields in app/views/devise/registrations/new.html.erb
  # this allows us to configure the role of the user at the registration
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role])

  end           
end

