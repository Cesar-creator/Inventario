class DeleteColumnsProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :cantidadMinima
    remove_column :products, :cantidadActual
    remove_column :products, :fechaExpiracion
    add_column :products, :cantidad, :integer
  end
end
