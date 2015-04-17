module ApplicationHelper

  def current_user
    @user ||= User.find(session[:runner_id]) if session[:runner_id]
  end

  def logged_in?
    !!current_user
  end

  def authenticate
    unless logged_in?
      redirect_to root_path, alert: "Please log in."
      return false
    end
  end


end
