class CreatePagamentos < ActiveRecord::Migration
  def change
    create_table :pagamentos do |t|
      t.boolean :emitente_contratante
      t.string :convenio
      t.references :cadastro, index: true, foreign_key: true
      t.decimal :valor_restante
      t.decimal :valor_total

      t.timestamps null: false
    end
  end
end
