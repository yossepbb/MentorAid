class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
    # @book = Booking.find(@tt)
  end

  def create
    @user_skill_id = UserSkill.find(params[:user_skill_id])
    @booking = @user_skill_id.bookings.new(booking_params)
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to bookings_path
    else
      redirect_to bookings_path
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to bookings_path
    else
      render 'index'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_skill_id, :user_id, :happenned_at, :review, :rating)
  end
end
