class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.date :checkin
      t.date :checkout
      t.references :user, foreign_key: true
      t.references :cowork, foreign_key: true

      t.timestamps
    end
  end
end
