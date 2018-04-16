class CreateSellerAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :seller_accounts do |t|
      t.references :seller, foreign_key: true
      t.string :bank
      t.text :address
      t.string :account
      t.string :swift

      t.timestamps
    end
  end
end
