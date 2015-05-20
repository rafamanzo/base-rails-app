class DadosObito < ActiveRecord::Base
	has_one :cadastro
	
	validates :local_falecimento, length: {maximum: 50}, numericality: false
	validates :cartorio, :causa_mortis, :cemiterio, :endereco, :medico, :proaim, length: {maximum: 50}, numericality: false
	validates :crm, length: {maximum: 10}, numericality: {only_integer: true}
	#Não fizemos validação das datas e horas de falecimento e sepultamento, se não der erro para valores inválidos teremos que fazer a validação
	validates :observacoes, length: {maximum: 1023}
end