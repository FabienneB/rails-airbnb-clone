class ChangeColumnToBookings < ActiveRecord::Migration[5.0]
  def change
    change_column :bookings, :status, :string
  end
end
