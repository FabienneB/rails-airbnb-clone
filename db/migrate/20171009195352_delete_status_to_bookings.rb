class DeleteStatusToBookings < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :status, :boolean
  end
end
