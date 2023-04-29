class ChangeDireccionToClient < ActiveRecord::Migration[7.0]
  def change
    change_column :clients, :direccion, :string
  end
end
