class CreateQuotations < ActiveRecord::Migration[5.1]
  def change
    create_table :quotations do |t|
      t.references :season, foreign_key: true
      t.references :supplier, foreign_key: true
      t.references :handler, foreign_key: true
      t.references :seller, foreign_key: true
      t.references :client, foreign_key: true
      t.references :payment_term, foreign_key: true
      t.boolean :status
      t.string :proforma

      t.timestamps
    end
  end
end
