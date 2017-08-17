class AddColumnToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :nbr_coworkers, :integer
    add_column :bookings, :status, :boolean
  end
end
