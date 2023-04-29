class AddCostUnitAndValorTotalToMovements < ActiveRecord::Migration[7.0]
  def change
    add_column :movements, :valorTotal, :integer
    add_column :movements, :costoUnitario, :integer
  end
end
