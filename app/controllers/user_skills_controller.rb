class UserSkillsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

   def index
    @user_skills = UserSkill.all

    @user = User.all
    @users = @user.where.not(latitude: nil, longitude: nil)
    @markers = @users.map do |us|
      {
        lat: us.latitude,
        lng: us.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
   end


   def show
    @user_skill = UserSkill.find(params[:id])
    @booking = Booking.new
    @user_latitude = @user_skill.user.latitude
    @user_longitude = @user_skill.user.longitude
    @markers = [{lat: @user_skill.user.latitude, lng: @user_skill.user.longitude}]
    end
end


