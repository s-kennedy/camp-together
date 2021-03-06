class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :create, :update, :destroy]

  def new
    @profile = Profile.new
  end

  def edit
  end

  def create
    @profile = current_user.build_profile(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_profile
      @profile = current_user.profile
    end

    def profile_params
      params.require(:profile).permit(:description, :first_aid, :wilderness_first_aid, :previous_trips, :age, :gender, :training, :city, :favourite_park)
    end
end
