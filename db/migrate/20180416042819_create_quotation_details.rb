class CreateQuotationDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :quotation_details do |t|
      t.references :quotation, foreign_key: true
      t.references :brand, foreign_key: true
      t.references :product, foreign_key: true
      t.string :style
      t.references :color, foreign_key: true
      t.integer :quantity
      t.references :size, foreign_key: true
      t.integer :ratio
      t.date :delivery_date
      t.decimal :target_price, precision: 10, scale: 2
      t.decimal :final_price, precision: 10, scale: 2
      t.string :otherdetails
      t.decimal :total, precision: 20, scale: 2
      t.boolean :status

      t.timestamps
    end
  end
end
