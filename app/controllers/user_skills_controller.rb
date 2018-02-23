class UserSkillsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

   def index
    #if query is not empty
    @skills = Skill.all
    @selected_user_skills = UserSkill.all
    @selected_user_skills = @selected_user_skills.where(user_id: params[:user_id]) if params[:user_id]
    @user_skills = UserSkill.all
    #else
   end

   def show
    @user_skill = UserSkill.find(params[:id])
    @booking = Booking.new
    @user_latitude = @user_skill.user.latitude
    @user_longitude = @user_skill.user.longitude
    @markers = [{lat: @user_skill.user.latitude, lng: @user_skill.user.longitude}]
    end
end


