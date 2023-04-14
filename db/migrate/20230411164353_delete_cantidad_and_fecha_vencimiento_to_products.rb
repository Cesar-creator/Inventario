class DeleteCantidadAndFechaVencimientoToProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :fechaVencimiento
    remove_column :products, :cantidad
  end
end
