class DadosObito < ActiveRecord::Base
	belongs_to :cadastro
  has_one :dados_velorio

  accepts_nested_attributes_for :dados_velorio
  # validates_associated :dados_velorio
	# accepts_nested_attributes_for :corpo_velado
	# validates_associated :corpo_a_ser_velado, if: :PNS?
	# TODO criar esse dropdown

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
		cadastro.GD?
	end

	def PNS?
		cadastro.PNS?
	end
end