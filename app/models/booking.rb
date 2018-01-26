class Booking < ActiveResource::Base
  self.site = "https://luvotels-hiring-api.herokuapp.com/motels/:motel_id/"
  self.element_name = "bookings"
  belongs_to :room
  belongs_to :motel
  belongs_to :user

  def self.bookings_user_objects(user_motel_id)
    Booking.find(:all, :from => "/motels/#{user_motel_id}/bookings.json")
  end

end