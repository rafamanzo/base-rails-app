class CreateLocalizacaos < ActiveRecord::Migration
  def change
    create_table :localizacaos do |t|
      t.text :endereco
      t.string :bairro
      t.integer :numero
      t.string :cidade
      t.string :complemento
      t.string :cep
      t.string :estado

      t.timestamps null: false
    end
  end
end
