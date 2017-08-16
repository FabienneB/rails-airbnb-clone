class AddCoordinatesToCoworks < ActiveRecord::Migration[5.0]
  def change
    add_column :coworks, :latitude, :float
    add_column :coworks, :longitude, :float
  end
end
