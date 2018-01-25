class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(motel_id: params[:motel_id])
  end

  def show
  end
end
