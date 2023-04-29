class AddProveedorIdColumnToMovements < ActiveRecord::Migration[7.0]
  def change
    add_reference :movements, :proveedor, null: false, foreign_key: true
  end
end
