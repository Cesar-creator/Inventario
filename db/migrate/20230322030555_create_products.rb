class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :nombre
      t.text :descripcion
      t.integer :cantidad
      t.string :fechaVencimiento

      t.timestamps
    end
  end
end
