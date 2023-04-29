class ChangeIntToClient < ActiveRecord::Migration[7.0]
  def change
    change_column :clients, :cedula, :bigint
    change_column :clients, :telefono, :bigint
  end
end
