class Cadastro < ActiveRecord::Base
  has_one :contratante
  has_one :falecido
  has_one :dados_obito
  has_one :compra

  validates_associated( :contratante)
  validates_associated( :falecido)

  def PNS?
    tipo_operacao == 1 and tipo_contratacao == 1 and destino_final == 1
  end

  def GD?
    tipo_operacao == 2 and tipo_contratacao == 3
  end

  def nome_fluxo
    if PNS?
      "Processo Pago Normal Sepultamento (PNS)"
    elsif GD?
      "Processo Gratuito Desconhecido (GD)"
    end
  end
end
