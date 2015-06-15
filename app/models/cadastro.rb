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

  def nome_fluxo
    case tipo_operacao
    when 1
      case tipo_contratacao
      when 1
        case destino_final
        when 1
          "Processo Pago Normal Sepultamento (PNS)"
        else
          ""
        end
      else
        ""
      end
    when 2
      case tipo_contratacao
      when 2
        "Processo Gratuito Desconhecido (GD)"
      else
        ""
      end
    else
      ""
    end
  end
end
