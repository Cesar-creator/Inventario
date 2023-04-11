class AddDateAndOthersToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :fechaExpiracion, :date
    add_column :products, :cantidadMinima, :integer
    add_column :products, :cantidadActual, :integer
  end
end
