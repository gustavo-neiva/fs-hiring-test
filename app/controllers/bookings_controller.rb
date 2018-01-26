class BookingsController < ApplicationController
  
  before_action :set_bookings, only: [:index, :show]
  include BookingsHelper
  
  def index
    # byebug
  end

  def show
  end

  private

  def set_bookings
    @motel_id = current_user.motel_id
    @bookings_all = Booking.find(:all, :from => "/motels/#{current_user.motel_id}/bookings.json").map(&:attributes)
    @bookings_room = @bookings_all.select {|id| id["room_id"] == params[:format].to_i }
    @revenue_total = @bookings_all.map {|id| id["amount_centavos"] }.sum/100
    @revenue_room = @bookings_room.map {|id| id["amount_centavos"] }.sum/100
    @fee_percentage_average_room = @bookings_room.map {|id| id["fee_percentage"] }.inject{ |sum, el| sum + el }.to_f / @bookings_room.size
    @fee_percentage_average_total = @bookings_all.map {|id| id["fee_percentage"] }.inject{ |sum, el| sum + el }.to_f / @bookings_all.size
  end
end