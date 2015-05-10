class CreateCasamentos < ActiveRecord::Migration
  def change
    create_table :casamentos do |t|
      t.string :nome
      t.timestamps :data_casamento
      t.string :cartorio
      t.string :cidade
      t.string :uf
      t.integer :livro
      t.integer :folha
      t.integer :numero

      t.timestamps null: false
    end
  end
end
