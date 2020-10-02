class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

  protected
   
   
        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:email, :password,:mobile_number,:is_female,:cv])
            devise_parameter_sanitizer.permit(:account_update, keys:[:name, :email, :password, :current_password, :is_female,:mobile_number,:cv] )
        end
end
