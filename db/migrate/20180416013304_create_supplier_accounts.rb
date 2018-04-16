class CreateSupplierAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :supplier_accounts do |t|
      t.references :supplier, foreign_key: true
      t.string :bank
      t.text :address
      t.string :account
      t.string :swift

      t.timestamps
    end
  end
end
