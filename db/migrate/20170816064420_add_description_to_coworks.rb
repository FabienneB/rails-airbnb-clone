class AddDescriptionToCoworks < ActiveRecord::Migration[5.0]
  def change
    add_column :description, :text
  end
end
