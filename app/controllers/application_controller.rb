class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def set_current_user
    @current_user ||=	session[:session_token] && User.find_by_session_token(session[:session_token])
  end
  protect_from_forgery with: :exception
  include SessionsHelper
  
  
  private

    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

end
