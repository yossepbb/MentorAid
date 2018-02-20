class UserSkillsController < ApplicationController
   def index
    @user_skills = UserSkill.all
   end

   def show
    @user_skill = UserSkill.find(params[:id])
   end

end
