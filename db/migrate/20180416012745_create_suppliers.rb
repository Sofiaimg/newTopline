class CreateSuppliers < ActiveRecord::Migration[5.1]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.text :address
      t.string :country
      t.string :contact
      t.string :phone
      t.string :fax
      t.string :email

      t.timestamps
    end
  end
end
