class InvertRelations < ActiveRecord::Migration
  def change
  	remove_column :compras, :taxa_adicional
  	remove_reference :falecidos, :localizacao
  	add_reference :localizacaos, :falecido, index: true
  	remove_reference :contratantes, :localizacao
  	add_reference :localizacaos, :contratante, index: true
  	remove_reference :cadastros, :contratante
    remove_reference :cadastros, :falecido
    remove_reference :cadastros, :dados_obito
    add_reference :contratantes, :cadastro, index: true
    add_reference :falecidos, :cadastro, index: true
    add_reference :dados_obitos, :cadastro, index: true
  end
end
