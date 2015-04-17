class UsersController < ApplicationController
  skip_before_action :authenticate, only: [:new, :create]
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.update(user_signup_params)
    if @user.save
      create_session(@user)
      redirect_to @user
    else
      render :new, alert: "You screwed up"
    end
  end

  def update
  end



  def show
    @user = User.find(params[:id])
  end

  def user_signup_params
    params.require(:user).permit(:name,:username,:password,:handle)
  end

  def user_profile_update_params
    params.require(:user).permit(:name,:handle,:about_me)
  end
end
