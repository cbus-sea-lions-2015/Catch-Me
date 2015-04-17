module SessionsHelper

  def create_session(user)
    session[:runner_id] = user.id
  end

end
