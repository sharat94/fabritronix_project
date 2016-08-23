
class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.for(:sign_in) { |u| u.permit( :email, :password, :role  ) }
	end

def after_sign_in_path_for(resource)
	
	if params[:user][:role] == "user"
		tickets_path
	else
		projects_path
	end
end
end
