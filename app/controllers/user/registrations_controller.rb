class User::RegistrationsController < Devise::RegistrationsController
  # before registrating a user using devise
  before_action :configure_permitted_parameters
  
  protected
  # enable access to first_name and Last_name devise parameters on create and edit user account
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end
  
end