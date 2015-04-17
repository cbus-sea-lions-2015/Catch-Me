class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.update(user_signup_params)
    if @user.save
      redirect_to @user
    else
      redirect_to :new, flash: "You screwed up"
    end
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
