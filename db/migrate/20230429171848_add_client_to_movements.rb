class AddClientToMovements < ActiveRecord::Migration[7.0]
  def change
    add_reference :movements, :client, foreign_key: true
  end
end
