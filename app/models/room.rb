class Room < ActiveResource::Base
  self.site = "https://luvotels-hiring-api.herokuapp.com/motels/:motel_id/"
  self.element_name = "rooms"
  has_many :bookings
  belongs_to :motel
end