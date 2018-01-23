class Booking < ApplicationRecord
  belongs_to :motel
  belongs_to :room
end
