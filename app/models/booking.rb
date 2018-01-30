class Booking < ActiveResource::Base
  self.site = "https://luvotels-hiring-api.herokuapp.com/motels/:motel_id/"
  belongs_to :room
  belongs_to :motel
  belongs_to :user
end