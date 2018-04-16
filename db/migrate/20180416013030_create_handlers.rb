class CreateHandlers < ActiveRecord::Migration[5.1]
  def change
    create_table :handlers do |t|
      t.references :supplier, foreign_key: true
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
