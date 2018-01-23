class Motel < ActiveResource::Base
  self.site = "https://luvotels-hiring-api.herokuapp.com/"
  belongs_to :user
  has_many :rooms
  has_many :bookings
end