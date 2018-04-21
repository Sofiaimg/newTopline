class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.references :category, foreign_key: true
      t.string :photo
      t.string :description
      t.string :finish
      t.string :composition
      t.string :fit
      t.string :construction
      t.string :placket
      t.string :pocket
      t.string :washing
      t.string :note

      t.timestamps
    end
  end
end
