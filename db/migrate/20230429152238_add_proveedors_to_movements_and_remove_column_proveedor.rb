class AddProveedorsToMovementsAndRemoveColumnProveedor < ActiveRecord::Migration[7.0]
  def change
    add_reference :movements, :proveedors, null: false, foreign_key: true
    remove_column :products, :proveedor_id
  end
end
