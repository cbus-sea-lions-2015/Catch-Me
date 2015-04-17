class SessionsController < ApplicationController
  skip_before_action :authenticate, only: [:new, :create]

  def new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      create_session(@user)
      redirect_to @user
    else
      render :new, alert: "Incorrect username or password."
    end
  end

  def destroy
    session.delete(:runner_id)
    redirect_to root_path
  end
end
