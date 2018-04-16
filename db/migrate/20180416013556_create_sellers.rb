class CreateSellers < ActiveRecord::Migration[5.1]
  def change
    create_table :sellers do |t|
      t.string :name
      t.text :address
      t.string :country
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
