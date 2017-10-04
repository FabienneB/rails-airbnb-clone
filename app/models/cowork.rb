class Cowork < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, dependent: :destroy
  has_many :users, through: :bookings
  has_attachments :photos, maximum: 3
  validates :photos, presence: true
  validates :city, presence: true
  validates :capacity, presence: true
  validates :capacity, numericality: { only_integer: true }
  validates :price, numericality: { only_integer: true }, presence: true
  validates :address, presence: true, length: { minimum: 2 }
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end

