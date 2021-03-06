class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

    # For additional fields in app/views/devise/registrations/new.html.erb
  # this allows us to configure the role of the user at the registration
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role, :media_type, :instagram_identifier, :youtube_identifier, :number_of_followers, :content_type, :target_generation, :location, :company])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:first_name, :last_name, :email])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :password, :password_confirmation, :photo]) 
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :instagram_identifier, :youtube_identifier, :number_of_followers, :content_type, :youtube_vid_price , :youtube_ref_price, :instagram_post_price, :instagram_story_price])
  end           
end


