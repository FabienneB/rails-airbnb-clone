class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :cowork
  validates :checkin, presence: true
  validates :checkout, presence: true
end

