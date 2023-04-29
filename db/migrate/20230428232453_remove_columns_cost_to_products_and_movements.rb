class RemoveColumnsCostToProductsAndMovements < ActiveRecord::Migration[7.0]
  def change
    remove_column :movements, :valorTotal
    remove_column :movements, :costoUnitario
    remove_column :products, :costoUnit
  end
end
