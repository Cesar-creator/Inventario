class AgregarNotNullCategorias < ActiveRecord::Migration[7.0]
  def change
    change_column_null :categories, :nombre, false
  end
end
