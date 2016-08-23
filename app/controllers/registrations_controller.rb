 class RegistrationsController < Devise::RegistrationsController
private
 	def sign_in_params
 		params[:user].permit(:email, :password, :role)
 	end
end
