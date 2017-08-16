class AddAdressToCoworks < ActiveRecord::Migration[5.0]
  def change
    add_column :coworks, :address, :string
  end
end
