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

	validates :nome_completo, presence: true, message: "Campo vazio. É obrigatório o preenchimento do campo."
	validates :nome_completo, length: {maximum: 200}, message: "Nome muito grande."
	validates :nome_completo, numericality: false, message: "Forneça um nome válido. Nomes não podem possuir números!"
	validates :cpf, presence: true, message: "Campo vazio. É obrigatório o preenchimento do campo."
	validates :rg, presence: true, message: "Campo vazio. É obrigatório o preenchimento do campo."
	validates :profissao, numericality: false, message: "Forneça uma profissão válida. Profissão não pode possuir números!"
	validates :profissao, length: {maximum: 200}, message: "Profissão muito grande."
	validates :parentesco, numericality: false, message: "Forneça um parentesco válido. Parentesco não pode possuir números!"
	validates :parentesco, length: {maximum: 50}, message: "Nome muito grande."
	validates :nome_mae, presence:true, message: "Campo vazio. É obrigatório o preenchimento do campo."
	validates :nome_mae, length: {maximum: 200}, message: "Nome muito grande."
	validates :nome_mae, numericality: false, message: "Forneça um nome válido. Nomes não podem possuir números!"
	validates :cnpj, length: {maximum: 200}, message: "Cnpj muito grande."
	validates :nome_empresarial, length: {maximum: 200}, message: "Nome muito grande."
	validates :email, length: {maximum: 200}, message: "e-mail muito grande."
	validates :email, allow_blank: true, email: true, message: "Campo vazio ou inválido. É obrigatório o preenchimento correto do campo."
end