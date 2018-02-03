class RoomsController < ApplicationController
  def show
    @bookings_room = @bookings.select {|id| id["room_id"] == params[:id].to_i }
    @room = @rooms_arr.select {|id| id["id"] == params[:id].to_i }
    @revenue_room = @bookings_room.map {|id| id["amount_centavos"] }.sum/100
    @fee_room = @bookings_room.map { |i| i.values[2]/100 * i.values[3]/100 }.inject(:+)
    @income_room = @revenue_room - @fee_room
    @sorted_by_month_room = (@bookings_room.map { |el| el.fetch("paid_at")}).zip((@bookings_room.map { |el| el.fetch("amount_centavos")})).group_by_month { |u| u[0] }
    @total_rev_month_room = @sorted_by_month_room.map { |k,v| [k, (v.map(&:last).sum)/100]}
  end
end
