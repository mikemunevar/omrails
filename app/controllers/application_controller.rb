class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  #Define this new function.  You need to create this because you created access_denied in active_admin.rb #MDM
  def access_denied(exception)
    redirect_to root_path, alert: exception.message
  end
end
