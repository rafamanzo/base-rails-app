class CreateInfoPagamentos < ActiveRecord::Migration
  def change
    create_table :info_pagamentos do |t|
      t.string :emitente
      t.string :rg
      t.string :telefone
      t.string :tipo
      t.string :bandeira
      t.string :parcelamento
      t.string :pin_pad
      t.string :autorizacao
      t.string :cv_doc
      t.decimal :valor
      t.references :pagamento, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
