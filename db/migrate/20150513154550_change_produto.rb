class ChangeProduto < ActiveRecord::Migration
  def change
  	remove_column :produtos, :dimensao_urna
    remove_column :produtos, :dimensao_revestimento
    remove_column :produtos, :carro_carreto
    remove_column :produtos, :carro_enterro
    remove_column :produtos, :sepultamento
    remove_column :produtos, :outras_taxas
    remove_column :produtos, :tipo_taxa
    remove_column :produtos, :valor_taxa
    add_column :produtos, :udm, :string
    add_column :produtos, :nome, :string
    add_column :produtos, :valor_unitario, :decimal
  end
end
