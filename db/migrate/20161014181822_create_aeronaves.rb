class CreateAeronaves < ActiveRecord::Migration
  def change
    create_table :aeronaves do |t|
      t.string :modelo
      t.integer :uuid

      t.timestamps null: false
    end
  end
end
