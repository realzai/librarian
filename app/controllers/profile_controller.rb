class ProfileController < ApplicationController
  layout "dashboard"

  def index
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @profile = Profile.new
    render layout: "landing"
  end


  def create
    @profile = current_user.build_profile(profile_params)

    if @profile.save
      redirect_to dashboard_index_path, notice: "Profile created successfully."
    else
      render :new, layout: "landing"
    end
  end

  private
  def profile_params
    params.require(:profile).permit(:user_name, :profile_image)
  end
end
