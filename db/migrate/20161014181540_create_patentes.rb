class CreatePatentes < ActiveRecord::Migration
  def change
    create_table :patentes do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
