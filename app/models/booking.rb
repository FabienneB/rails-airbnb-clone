class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :cowork
  validates :checkin, presence: true
  validates :checkout, presence: true
  validate :checkout_after_checkin


  def checkout_after_checkin
    if checkout < checkin
      errors.add(:checkout, "The check-out date can't be before check-in")
    end
  end
end
