class AddPriceToCoworks < ActiveRecord::Migration[5.0]
  def change
    add_column :coworks, :price, :integer
  end
end
