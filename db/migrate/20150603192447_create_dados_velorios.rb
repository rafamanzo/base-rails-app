class CreateDadosVelorios < ActiveRecord::Migration
  def change
    create_table :dados_velorios do |t|
      t.string :local_velorio
      t.text :endereco_velorio
      t.datetime :data_saida
      t.text :hora_saida
      t.string :crematorio
      t.text :endereco_crematorio
      t.datetime :data_cremacao
      t.text :hora_cremacao

      t.timestamps null: false
    end
  end
end
