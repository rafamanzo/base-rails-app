class Contratante < ActiveRecord::Base
  has_one :localizacao
  belongs_to :cadastro

  accepts_nested_attributes_for :localizacao  
  validates_associated :localizacao
  
  validates :nome_completo, presence:true, length: {maximum: 50}, numericality: false
  validates :cpf, presence: true
  validates :rg, presence: true
  validates :profissao, numericality: false, length: {maximum: 50}
  validates :parentesco, numericality: false, length: {maximum: 50}
  validates :email, length: {maximum: 50}
  validates :nome_mae, presence:true, length: {maximum: 50}, numericality: false
  validates :cnpj, length: {maximum: 50}
  validates :nome_empresarial, length: {maximum: 50}
end