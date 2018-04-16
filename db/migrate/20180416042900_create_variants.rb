class CreateVariants < ActiveRecord::Migration[5.1]
  def change
    create_table :variants do |t|
      t.references :quotation_detail, foreign_key: true
      t.integer :quantity
      t.references :size, foreign_key: true
      t.integer :ratio

      t.timestamps
    end
  end
end
