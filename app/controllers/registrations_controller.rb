class RegistrationsController < Devise::RegistrationsController

  before_filter :configure_permitted_parameters, if: :devise_controller?


 protected
  def configure_permitted_parameters
# Add my attributes added to the devise User class
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    # devise_parameter_sanitizer.permit(:sign_in, keys: [:is_admin])
  end
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:account_update_params).push(:name)
  # end

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  end



end
