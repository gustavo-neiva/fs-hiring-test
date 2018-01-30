require 'csv'
require 'json'
class BookingsController < ApplicationController
  before_action :set_bookings

  def index
    @revenue_total = @bookings.map {|id| id["amount_centavos"] }.sum/100
    @fee_total = @bookings.map { |i| i.values[2]/100 * i.values[3]/100 }.inject(:+)
    @income_total = @revenue_total - @fee_total
    @bookings_total = @bookings.count
    @fee_pp_avg_total = @bookings.map {|id| id["fee_percentage"] }.inject{ |sum, el| sum + el }.to_f / @bookings.size
  end

  def show
    @bookings_room = @bookings.select {|id| id["room_id"] == params[:id].to_i }
    @revenue_room = @bookings_room.map {|id| id["amount_centavos"] }.sum/100
    @fee_pp_avg_room = @bookings_room.map {|id| id["fee_percentage"] }.inject{ |sum, el| sum + el }.to_f / @bookings_room.size
    @bookings_refactor = @bookings_room.each { |el| el["amount_centavos"] = el["amount_centavos"]/100 }.each { |el| el["paid_at"] = el["paid_at"].to_datetime.strftime("%b, %m %Y - %H:%M") }.each { |el| el["created_at"] = el["created_at"].to_datetime.strftime("%b, %m %Y - %H:%M") } 
    @bookings_json = @bookings_refactor.to_json
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