class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
    # @book = Booking.find(@tt)
  end

  def create
    @user_skill = UserSkill.find(params[:user_skill_id])
    @booking = @user_skill.bookings.new(booking_params)
    @booking.user = current_user
    @booking.save
    redirect_to bookings_path
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      respond_to do |format|
        format.html { redirect_to bookings_path }
        format.js # render update.js.erb
      end
    else
      @bookings = current_user.bookings
      respond_to do |format|
        format.html { render :index }
        format.js # render update.js.erb
      end
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_skill_id, :user_id, :happenned_at, :review, :rating)
  end
end
