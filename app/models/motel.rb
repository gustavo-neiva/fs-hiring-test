class Motel < ApplicationRecord
  belongs_to :user
  has_many :rooms, dependent: :destroy
  has_many :bookings, dependent: :destroy
end
