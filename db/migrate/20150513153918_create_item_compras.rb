class CreateItemCompras < ActiveRecord::Migration
  def change
    create_table :item_compras do |t|
      t.integer :quatidade
      t.references :compra, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
