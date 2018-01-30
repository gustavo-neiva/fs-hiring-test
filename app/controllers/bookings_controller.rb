class BookingsController < ApplicationController
  
  before_action :set_bookings, only: [:index, :show]

  def index
    @revenue_total = @bookings.map {|id| id["amount_centavos"] }.sum/100
    @fee_total = @bookings.map { |i| i.values[2]/100 * i.values[3]/100 }.inject(:+)
    @income_total = @revenue_total - @fee_total
    @bookings_total = @bookings.count
    @fee_pp_avg_total = @bookings.map {|id| id["fee_percentage"] }.inject{ |sum, el| sum + el }.to_f / @bookings.size
    console
  end

  def show
    @bookings_room = @bookings.select {|id| id["room_id"] == params[:id].to_i }
    @revenue_room = @bookings_room.map {|id| id["amount_centavos"] }.sum/100
    @fee_pp_avg_room = @bookings_room.map {|id| id["fee_percentage"] }.inject{ |sum, el| sum + el }.to_f / @bookings_room.size
    console
  end

  private

  def set_bookings
    @motel_id = current_user.motel_id
    @bookings_obj = Booking.where(motel_id: @motel_id)
    @bookings = @bookings_obj.map(&:attributes)
    @motel = Motel.all.select { |motel| motel.id == current_user.motel_id }
    @rooms = Room.where(motel_id: @motel_id)
  end
  
end