class AddColumnsToClients < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :logo, :string
    add_column :clients, :rut, :string
    end
end
