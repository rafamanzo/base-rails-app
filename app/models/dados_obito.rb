class DadosObito < ActiveRecord::Base
  belongs_to :cadastro
  has_one :dados_velorio

  accepts_nested_attributes_for :dados_velorio
  validates_associated :dados_velorio, if: :PNS?
	# TODO criar esse dropdown

	#Geral
	validates :local_falecimento, :causa_mortis, :endereco, :medico, length: {maximum: 255, message: "pode ter no máximo 255 caracteres."}, numericality: false
	validates :cartorio, :cemiterio, length: {maximum: 50, message: "pode ter no máximo 50 caracteres."}
	validates :proaim, length: {maximum: 20, message: "pode ter no máximo 20 caracteres."}
	validates :crm, length: {maximum: 10, message: "pode ter no máximo 10 caracteres."}, numericality: {only_integer: true, message: "só pode conter numeros."}
	validates :observacoes, length: {maximum: 1023, message: "pode ter no máximo 1023 caracteres."}

	#GD
	# Perguntar sobre obrigatoriedades pro cliente.
	#Não fizemos validação das datas e horas de falecimento e sepultamento, se não der erro para valores inválidos teremos que fazer a validação

	#PNS
	validates :endereco, length: {maximum: 255, message: "pode ter no máximo 255 caracteres."}, numericality: false, if: :PNS?
	validates :cartorio, :causa_mortis, :cemiterio, :medico, :proaim, :local_falecimento, :crm, presence: { message: "não pode ser vazio."}, if: :PNS?
	#Não fizemos validação das datas e horas de falecimento e sepultamento, se não der erro para valores inválidos teremos que fazer a validação


	def GD?
		cadastro.GD?
	end

	def PNS?
		cadastro.PNS?
	end
end