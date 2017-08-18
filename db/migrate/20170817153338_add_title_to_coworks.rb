class AddTitleToCoworks < ActiveRecord::Migration[5.0]
  def change
    add_column :coworks, :title, :string
  end
end
