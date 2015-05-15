class CreateCompras < ActiveRecord::Migration
  def change
    create_table :compras do |t|
      t.boolean :remocao_local_falecimento
      t.string :local_remocao
      t.string :endereco_remocao
      t.string :urna
      t.string :revestimento
      t.boolean :finalizada
      t.decimal :taxa_adicional
      t.string :observacoes

      t.timestamps null: false
    end
  end
end
