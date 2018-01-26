class BookingsController < ApplicationController
  
  before_action :set_user, :set_motel_id

  def index
    @booking_objs = Booking.bookings_user_objects(@motel_id)
    @bookings = @booking_objs.map(&:attributes)
  end

  def show
    # @booking = @bookings.get(:all, :from => "/motels/#{params[:motel_id]}/bookings.json")
  end

  private

  def set_user
    @user = current_user
  end

  def set_motel_id
    @motel_id = @user.motel_id
  end

end
