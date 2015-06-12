class Falecido < ActiveRecord::Base
  has_one :localizacao
  has_one :casamento
  has_one :nascimento_obito
  has_one :certidao_nascimento
  has_many :filhos
  belongs_to :cadastro

  accepts_nested_attributes_for :localizacao
  accepts_nested_attributes_for :casamento
  accepts_nested_attributes_for :nascimento_obito
  accepts_nested_attributes_for :filhos
  accepts_nested_attributes_for :nascimento_obito
  accepts_nested_attributes_for :certidao_nascimento


  #Geral
  #validates :nascimento_obito, presence: true
  validates :nome, :nome_mae, :nome_pai, length: {maximum: 255}, numericality: false
  validates :naturalidade, :naturalidade_mae, :naturalidade_pai, :documento, :profissao, :profissao_mae, :profissao_pai, length: {maximum: 50}, numericality: false
  validates :idade_mae, :idade_pai, numericality: {only_integer: true}, allow_blank: true
  validates :sexo, presence: true, length: {maximum: 20}, numericality: false
  validates :cor, presence: true, numericality: false
  validates :cpf, :estado_civil, :estado_civil_mae, :estado_civil_pai, length: {maximum: 20}
  #Não fizemos validação das datas de nascimento
  validates :numero_documento, length: {maximum: 50}
  validates :beneficio, length: {maximum: 20}
  validates :peso, :altura, length: {maximum: 5}

  #GD
  validates :nome, presence: true, if: :GD?

  #PNS
  validates :nome, :sexo, :cor, :naturalidade, :estado_civil, presence: true, if: :PNS?
  validates :nome_mae, :nome_pai, :estado_civil_mae, :estado_civil_pai, presence: true, if: :PNS?

  def GD?
    byebug
    cadastro.tipo_operacao == 2 && cadastro.tipo_contratacao == 3
  end

  def PNS?
    cadastro.tipo_operacao == 1 && cadastro.tipo_contratacao == 1 && cadastro.destino_final == 1
  end
end

#TODO se declarante não trouxer documento, colocar termo de responsabilidade na nota
