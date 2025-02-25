class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:type, :given_name, :last_name])
  end

  def after_sign_in_path_for(resource)
	  	return root_path
  end
end
