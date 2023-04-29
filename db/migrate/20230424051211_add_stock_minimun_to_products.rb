class AddStockMinimunToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :cantidadMInima, :integer
  end
end
