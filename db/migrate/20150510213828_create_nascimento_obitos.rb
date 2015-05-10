class CreateNascimentoObitos < ActiveRecord::Migration
  def change
    create_table :nascimento_obitos do |t|
      t.string :local_nascimento
      t.timestamps :data_nascimento
      t.string :avo_paterno
      t.string :avo_materno
      t.string :avo_paterna
      t.string :avo_materna
      t.integer :semanas_gestacao
      t.string :gravidez

      t.timestamps null: false
    end
  end
end
