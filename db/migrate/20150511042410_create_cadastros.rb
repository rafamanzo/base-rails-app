class CreateCadastros < ActiveRecord::Migration
  def change
    create_table :cadastros do |t|
      t.references :contratante, index: true, foreign_key: true
      t.references :falecido, index: true, foreign_key: true
      t.integer :tipo_operacao
      t.integer :tipo_contratacao
      t.integer :destino_final
      t.references :dados_obito, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
