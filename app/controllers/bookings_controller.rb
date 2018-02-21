class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end
  def create
    @user_skill_id = UserSkill.find(params[:user_skill_id])
    @booking = @user_skill_id.bookings.new(booking_params)
    if @booking.save
      redirect_to   bookings_path
    end
  end

  def review
     @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:user_skill_id, :user_id)
  end

end
