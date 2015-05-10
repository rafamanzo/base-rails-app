class CreateContratantes < ActiveRecord::Migration
  def change
    create_table :contratantes do |t|
      t.text :nome_completo
      t.string :cpf
      t.string :rg
      t.string :profissao
      t.string :parentesco
      t.string :telefone_residencial
      t.string :telefone_celular
      t.string :email
      t.string :nome_mae
      t.string :cnpj
      t.string :nome_empresarial
      t.references :localizacao, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
