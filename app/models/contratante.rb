class EmailValidator < ActiveModel::EachValidator
	def validate_each(record, attribute, value)
		unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
			record.errors[attribute] << (options[:message] || "forneça um email válido!")
		end
	end
end

class Contratante < ActiveRecord::Base
	has_one :localizacao
	has_one :empresa
	belongs_to :cadastro

	accepts_nested_attributes_for :empresa
	accepts_nested_attributes_for :localizacao
	validates_associated :localizacao
	validates_associated :empresa, if: :PNS?

	validates :nome_completo, presence: { message: "não pode ser vazio."}
	validates :nome_completo, length: {maximum: 200, message: "pode ter no máximo 200 caracteres."}
	validates :cpf, presence: { message: "não pode ser vazio."}
	validates :rg, presence: { message: "não pode ser vazio."}
	validates :profissao, length: {maximum: 200, message: "pode ter no máximo 200 caracteres."}
	validates :parentesco, length: {maximum: 50, message: "pode ter no máximo 50 caracteres."}
	validates :nome_mae, presence: { message: "não pode ser vazio."}
	validates :nome_mae, length: {maximum: 200, message: "pode ter no máximo 200 caracteres."}
	validates :email, length: {maximum: 200, message: "pode ter no máximo 200 caracteres."}
	validates :email, allow_blank: true, email: {message: "vazio ou inválido."}

	def GD?
		cadastro.GD?
	end

	def PNS?
		cadastro.PNS?
	end
end