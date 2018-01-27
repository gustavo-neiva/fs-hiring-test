class Room < ActiveResource::Base
  self.site = "https://luvotels-hiring-api.herokuapp.com/motels/:motel_id/"
  self.element_name = "rooms"
  belongs_to :motel
  has_many :bookings
end