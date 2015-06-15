class Cadastro < ActiveRecord::Base
  has_one :contratante
  has_one :falecido
  has_one :dados_obito
  has_one :compra

  validates_associated( :contratante)
  validates_associated( :falecido)

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
