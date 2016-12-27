module Internal
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    layout 'internal/application'
    
    before_action :authenticate_user!

    helper_method :current_user
    
    private

    def current_user
      Internal::User.find(session[:user_id]) rescue nil
    end

    def authenticate_user!
      if !current_user.present?
        redirect_to new_session_path if controller_name != "sessions"
      end
    end
  end
end
