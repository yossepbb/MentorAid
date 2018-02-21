class UserSkillsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

   def index
    @user_skills = UserSkill.all
   end

   def show
    @user_skill = UserSkill.find(params[:id])
    @booking = Booking.new
    @user_latitude = @user_skill.user.latitude
    @user_longitude = @user_skill.user.longitude
    # @user_coordinates = { lat: @user.latitude, lng: @user.longitude }
   end

end




