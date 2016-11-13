class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  #Define this new function.  You need to create this because you created access_denied in active_admin.rb #MDM
  def access_denied(exception)
    redirect_to root_path, alert: exception.message
  end
  
  # Not sure why we added this, perhaps to restrict level of access?  #MDM
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
