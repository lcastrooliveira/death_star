class CreateArmamentos < ActiveRecord::Migration
  def change
    create_table :armamentos do |t|
      t.string :nome
      t.string :descricao
      t.integer :poder_destruicao
      t.integer :quantidade

      t.timestamps null: false
    end
  end
end
