class UsersController < ApplicationController
  layout "landing"
  allow_unauthenticated_access

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      redirect_to new_session_path
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:email_address, :password, :password_confirmation)
  end
end
