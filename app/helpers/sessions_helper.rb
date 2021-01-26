module SessionsHelper
    def current_user2
      @current_user2 ||= User2.find_by(id: session[:user2_id])
    end
    def logged_in?
        current_user2.present?
      end
  end