class AddDescriptionToCoworks < ActiveRecord::Migration[5.0]
  def change
    add_column :coworks, :description, :text
  end
end
