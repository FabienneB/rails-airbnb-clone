class Cowork < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  has_attachments :photos, maximum: 3
end
