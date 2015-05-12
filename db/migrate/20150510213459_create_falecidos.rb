class CreateFalecidos < ActiveRecord::Migration
  def change
    create_table :falecidos do |t|
      t.string :nome
      t.string :sexo
      t.string :cor
      t.string :naturalidade
      t.datetime :nascimento
      t.string :profissao
      t.string :documento
      t.string :numero_documento
      t.string :cpf
      t.string :estado_civil
      t.references :localizacao, index: true, foreign_key: true
      t.boolean :marca_passo
      t.boolean :eleitor
      t.boolean :reservista
      t.boolean :inss
      t.boolean :inventariar
      t.boolean :testamento
      t.integer :beneficio
      t.string :nome_mae
      t.string :naturalidade_mae
      t.string :estado_civil_mae
      t.integer :idade_mae
      t.string :profissao_mae
      t.string :nome_pai
      t.string :naturalidade_pai
      t.string :estado_civil_pai
      t.string :profissao_pai
      t.integer :idade_pai
      t.boolean :deixa_filhos

      t.timestamps null: false
    end
  end
end
