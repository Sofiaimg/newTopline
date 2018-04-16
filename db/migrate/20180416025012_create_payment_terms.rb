class CreatePaymentTerms < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_terms do |t|
      t.string :clause
      t.string :conditions

      t.timestamps
    end
  end
end
