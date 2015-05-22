class AddValorTotalToCompras < ActiveRecord::Migration
  def change
    add_column :compras, :valor_total, :decimal
  end
end
