class RemoveReferences < ActiveRecord::Migration[7.0]
  def change
    remove_reference :movements, :proveedor
    remove_reference :movements, :proveedors
  end
end
