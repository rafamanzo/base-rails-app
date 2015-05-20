class ChangeComprasFields < ActiveRecord::Migration
  def change
  	remove_column :produtos, :udm
  	add_column :produtos, :unidade_medida, :string
  	add_column :produtos, :dimensoes, :string
  	add_column :produtos, :ativo, :boolean
  	add_column :item_compras, :nome, :string
    add_column :item_compras, :valor_unitario, :decimal
    add_column :item_compras, :unidade_medida, :string
  	add_column :item_compras, :dimensoes, :string
  	remove_column :compras, :urna
  	remove_column :compras, :revestimento
  	remove_column :compras, :finalizada
  	add_column :cadastros, :status, :string
  	add_reference :compras, :cadastro, index: true
  	remove_reference :compras, :taxa_adicional
  	remove_reference :item_compras, :compra
  	add_reference :item_compras, :item, polymorphic: true, index: true
  end
end
