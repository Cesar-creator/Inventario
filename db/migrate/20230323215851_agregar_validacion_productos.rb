class AgregarValidacionProductos < ActiveRecord::Migration[7.0]
  def change
    change_column_null :products, :nombre, false
    change_column_null :products, :fechaVencimiento, false
    change_column_null :products, :cantidad, false
  end
end
