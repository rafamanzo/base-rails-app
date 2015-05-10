class CreateCertidaoNascimentos < ActiveRecord::Migration
  def change
    create_table :certidao_nascimentos do |t|
      t.timestamps :data_nascimento
      t.string :cartorio
      t.string :cidade
      t.string :uf
      t.integer :livro
      t.integer :folha
      t.integer :numero
      t.boolean :obito

      t.timestamps null: false
    end
  end
end
