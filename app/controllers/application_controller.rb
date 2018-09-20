class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  # around_action :set_current_user

  # def set_current_user
  #   Current.user = current_user
  #   yield
  # ensure
  #   # to address the thread variable leak issues in Puma/Thin webserver
  #   Current.user = nil
  # end             
end

