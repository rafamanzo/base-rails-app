class AddHoraFalecimentoToDadosObito < ActiveRecord::Migration
  def change
  	add_column :dados_obitos, :hora_falecimento, :text
  	add_column :dados_obitos, :hora_sepultamento, :text
  end
end
