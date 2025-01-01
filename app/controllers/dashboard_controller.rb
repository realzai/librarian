class DashboardController < ApplicationController
  layout "dashboard"

  def index
    @user = current_user

    if @user.profile.nil?
      redirect_to new_profile_path
    end
  end
end
