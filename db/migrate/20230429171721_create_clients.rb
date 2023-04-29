class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.integer :cedula
      t.integer :direccion
      t.integer :telefono

      t.timestamps
    end
  end
end
