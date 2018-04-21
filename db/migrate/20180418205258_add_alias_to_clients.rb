class AddAliasToClients < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :alias, :string
  end
end
