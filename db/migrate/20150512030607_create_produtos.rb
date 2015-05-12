class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :dimensao_urna
      t.string :dimensao_revestimento
      t.boolean :carro_carreto
      t.boolean :carro_enterro
      t.boolean :sepultamento
      t.boolean :outras_taxas
      t.string :tipo_taxa
      t.decimal :valor_taxa

      t.timestamps null: false
    end
  end
end
