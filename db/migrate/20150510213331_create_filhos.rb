class CreateFilhos < ActiveRecord::Migration
  def change
    create_table :filhos do |t|
      t.string :nome
      t.string :categoria_idade
      t.text :observacoes

      t.timestamps null: false
    end
  end
end
