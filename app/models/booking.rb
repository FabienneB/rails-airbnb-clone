class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :cowork
  validates :checkin, presence: true
  validates :checkout, presence: true
  validates :nbr_coworkers, presence: true
  validates :nbr_coworkers, numericality: { only_integer: true }
  validate :checkout_after_checkin


  def checkout_after_checkin
    errors.add(:checkout, "The check-out can't be before the check-in") if checkout < checkin
  end
end
