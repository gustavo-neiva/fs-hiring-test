class Booking < ActiveResource::Base
  self.site = "https://luvotels-hiring-api.herokuapp.com/motels/:motel_id/"
  self.element_name = "bookings"
  belongs_to :room
  belongs_to :motel
end