class ProfileController < ApplicationController
  layout "dashboard"

  def index
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
  end
end
