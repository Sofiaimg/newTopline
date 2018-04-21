class AddColumnsToSuppliers < ActiveRecord::Migration[5.1]
  def change
    add_column :suppliers, :logo, :string
    add_column :suppliers, :vat, :string
    add_column :suppliers, :alias, :string
  end
end
