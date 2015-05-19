class Localizacao < ActiveRecord::Base
	has_one :falecido
	has_one :contratante
	
	validates :endereco, presence: true, length: {maximum: 50}
	validates :bairro, presence: true, length: {maximum: 50}
	validates :numero, presence: true, length:{maximum: 10}, numericality: {only_integer: true}
	validates :cidade, presence: true, length:{maximum: 50}, numericality: false
	validates :complemento, length: {maximum: 50}
	validates :cep, presence: true, length:{maximum: 10}
	validates :estado, presence: true, length: {maximum: 2}, numericality: false
	
end