class RemoveReferences2 < ActiveRecord::Migration[7.0]
  def change
    remove_reference :movements, :proveedors
  end
end
