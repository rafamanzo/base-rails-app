class Falecido < ActiveRecord::Base
  has_one :localizacao
  belongs_to :cadastro

  accepts_nested_attributes_for :localizacao  
  validates_associated :localizacao
  
  validates :nome, :naturalidade , presence: true, length: {maximum: 50}, numericality: false
  validates :sexo, presence: true, length: {maximum: 20}, numericality: false
  validates :cor, presence: true, numericality: false
  validates :nascimento, length: {maximum:20}
  validates :profissao, :profissao_mae, :profissao_pai, numericality: false, length: {maximum: 50}
  validates :documento, numericality: false, length: {maximum: 50}
  validates :numero_documento, length: {maximum: 50}
  validates :cpf, length: {maximum: 20}
  validates :estado_civil, :estado_civil_mae, :estado_civil_pai, length: {maximum: 50}
  validates :marca_passo, :reservista, :eleitor, :inss, :inventariar, :testamento, length: {is: 3}
  validates :beneficio, length: {maximum: 20}
  validates :peso, :altura, length: {maximum: 5}
  validates :nome_mae, :nome_pai, :naturalidade_mae, :naturalidade_pai, length: {maximum: 50}, numericality: false
  validates :idade_mae, :idade_pai, numericality: {only_integer: true}
  validates :deixa_filhos, length: { is: 3}, numericality: false
end