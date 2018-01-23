class Room < ApplicationRecord
  has_many :bookings
  belongs_to :motel
end
