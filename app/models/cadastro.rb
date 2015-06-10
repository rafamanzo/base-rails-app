class Cadastro < ActiveRecord::Base
  has_one :contratante
  has_one :falecido
  has_one :dados_obito
  has_one :compra

  validates_associated( :contratante)
  validates_associated( :falecido)

  def GD?
    tipo_operacao == 2 && tipo_contratacao == 3
  end

  def PNS?
    tipo_operacao == 1 && tipo_contratacao == 1 && destino_final == 1
  end
end
