class ChangeDecimalToCostUnitarioAndValorTotal < ActiveRecord::Migration[7.0]
  def change
    change_column :movements, :valorTotal, :decimal
    change_column :movements, :costoUnitario, :decimal
  end
end
