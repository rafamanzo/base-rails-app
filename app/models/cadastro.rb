class Cadastro < ActiveRecord::Base
  has_one :contratante
  has_one :falecido
  has_one :dados_obito
  has_one :compra

  validates_associated( :contratante)
  validates_associated( :falecido)
end
