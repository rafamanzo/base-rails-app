class CreateDadosObitos < ActiveRecord::Migration
  def change
    create_table :dados_obitos do |t|
      t.string :local_falecimento
      t.datetime :data_falecimento
      t.string :cartorio
      t.string :proaim
      t.string :cemiterio
      t.string :endereco
      t.datetime :data_sepultamento
      t.string :medico
      t.string :crm
      t.text :observacoes
      t.string :causa_mortis

      t.timestamps null: false
    end
  end
end
