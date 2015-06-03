class DadosObito < ActiveRecord::Base
	belongs_to :cadastro
	
	#Geral
	validates :local_falecimento, :causa_mortis, :endereco, :medico, length: {maximum: 255}, numericality: false
	validates :cartorio, :cemiterio, length: {maximum: 50}
	validates :proaim, length: {maximum: 20}
	validates :crm, length: {maximum: 10}, numericality: {only_integer: true}
	validates :observacoes, length: {maximum: 1023}
	
	#GD
	# Perguntar sobre obrigatoriedades pro cliente.
	#Não fizemos validação das datas e horas de falecimento e sepultamento, se não der erro para valores inválidos teremos que fazer a validação
	
	#PNS
	validates :endereco, length: {maximum: 255}, numericality: false, if: :PNS?
	validates :cartorio, :causa_mortis, :cemiterio, :medico, :proaim, :local_falecimento, :crm, presence: true, if: :PNS?
	#Não fizemos validação das datas e horas de falecimento e sepultamento, se não der erro para valores inválidos teremos que fazer a validação
	
	
	def GD?
		cadastro.tipo_operacao == 2 && cadastro.tipo_contratacao == 3 
	end
	
	def PNS?
		cadastro.tipo_operacao == 1 && cadastro.tipo_contratacao == 1 && cadastro.destino_final == 1
	end
end