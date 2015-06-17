class Localizacao < ActiveRecord::Base
	belongs_to :falecido
	belongs_to :contratante

	validates :endereco, presence: { message: "não pode ser vazio."}, length: {maximum: 50, message: "pode ter no máximo 50 caracteres."}, if: :valida_localizacao?
	validates :bairro, presence: { message: "não pode ser vazio."}, length: {maximum: 50, message: "pode ter no máximo 50 caracteres."}, if: :valida_localizacao?
	validates :numero, presence: { message: "não pode ser vazio."}, numericality: {only_integer: true, message: "só pode conter numeros."}, if: :valida_localizacao?
	validates :cidade, presence: { message: "não pode ser vazio."}, length:{maximum: 50, message: "pode ter no máximo 50 caracteres."}, numericality: false, if: :valida_localizacao?
	validates :complemento, length: {maximum: 50, message: "pode ter no máximo 50 caracteres."}, if: :valida_localizacao?
	validates :cep, presence: { message: "não pode ser vazio."}, length:{maximum: 10, message: "pode ter no máximo 10 caracteres."}, if: :valida_localizacao?
	validates :estado, presence: { message: "não pode ser vazio."}, length: {maximum: 2, message: "pode ter no máximo 2 caracteres."}, numericality: false, if: :valida_localizacao?

	def valida_localizacao?
		@valida ||= false
		@valida
	end

	def valida= param
		@valida = param
	end
end