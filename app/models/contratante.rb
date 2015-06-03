class EmailValidator < ActiveModel::EachValidator
	def validate_each(record, attribute, value)
		unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
			record.errors[attribute] << (options[:message] || "is not an email")
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

	validates :nome_completo, presence: true, length: {maximum: 50}, numericality: false
	validates :cpf, presence: true
	validates :rg, presence: true
	validates :profissao, numericality: false, length: {maximum: 50}
	validates :parentesco, numericality: false, length: {maximum: 50}
	validates :nome_mae, presence:true, length: {maximum: 50}, numericality: false
	validates :email, length: {maximum: 50}, allow_blank: true, email: true
end