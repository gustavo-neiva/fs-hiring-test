class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :set_bookings

  protected

  def after_sign_in_path_for(resource)
    bookings_path
  end

  def set_bookings
    @motel_id = current_user.motel_id
    @bookings_obj = Booking.where(motel_id: @motel_id)
    @bookings = @bookings_obj.map(&:attributes)
    @motel = Motel.all.select { |motel| motel.id == current_user.motel_id }
    @rooms = Room.where(motel_id: @motel_id)
    @rooms_arr = @rooms.map(&:attributes)
    @rooms_id = @rooms_arr.map { |el| el[:id]}
  end

end
