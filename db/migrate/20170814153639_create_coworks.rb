class CreateCoworks < ActiveRecord::Migration[5.0]
  def change
    create_table :coworks do |t|
      t.string :city
      t.integer :capacity
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
