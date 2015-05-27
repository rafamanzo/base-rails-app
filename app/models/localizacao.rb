class Localizacao < ActiveRecord::Base
	belongs_to :falecido
	belongs_to :contratante

	validates :endereco, presence: true, length: {maximum: 50}, if: :valida_localizacao?
	validates :bairro, presence: true, length: {maximum: 50}, if: :valida_localizacao?
	validates :numero, presence: true, numericality: {only_integer: true}, if: :valida_localizacao?
	validates :cidade, presence: true, length:{maximum: 50}, numericality: false, if: :valida_localizacao?
	validates :complemento, length: {maximum: 50}, if: :valida_localizacao?
	validates :cep, presence: true, length:{maximum: 10}, if: :valida_localizacao?
	validates :estado, presence: true, length: {maximum: 2}, numericality: false, if: :valida_localizacao?
  
  def valida_localizacao?
    falecido.present?
    #ainda não está funcionando
  end
end