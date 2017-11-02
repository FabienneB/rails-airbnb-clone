class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :cowork
  validates :checkin, presence: true
  validates :checkout, presence: true
  validates :nbr_coworkers, presence: true
  validates :nbr_coworkers, numericality: { only_integer: true }
  validate :checkout_after_checkin
  validate :sum_coworkers


  def checkout_after_checkin
    errors.add(:checkout, "The check-out can't be before the check-in") if checkout < checkin
  end


  def sum_coworkers
    errors.add(:nbr_coworkers, "Sorry but the numbers of coworkers exceeded the capacity of this kikoho place") if nbr_coworkers > (self.cowork.capacity - self.cowork.bookings.where(:status == "accepted").sum { |nb| nb.nbr_coworkers })
  end

end


