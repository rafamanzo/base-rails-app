class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class Contratante < ActiveRecord::Base
	belongs_to :localizacao
	has_one :cadastro
	accepts_nested_attributes_for :localizacao
	validates_associated :localizacao
	validates :nome_completo, presence: true, length: {maximum: 50}, numericality: false
	validates :cpf, presence: true
	validates :rg, presence: true
	validates :localizacao, presence: true
	validates :profissao, numericality: false, length: {maximum: 50}
	validates :parentesco, numericality: false, length: {maximum: 50}
	validates :email, length: {maximum: 50}, allow_blank: true, email: true
	validates :nome_mae, presence:true, length: {maximum: 50}, numericality: false
	validates :cnpj, length: {maximum: 50}
	validates :nome_empresarial, length: {maximum: 50}
	
	def self.build(params = {}, options = {})
		contratante = Contratante.new(params, options)
		contratante.localizacao = Localizacao.new(params[:endereco])
		contratante
	end
end