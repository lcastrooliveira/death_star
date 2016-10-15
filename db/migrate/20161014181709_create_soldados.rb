class CreateSoldados < ActiveRecord::Migration
  def change
    create_table :soldados do |t|
      t.string :nome
      t.references :patente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
