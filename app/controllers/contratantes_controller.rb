class ContratantesController < ApplicationController
  def new
    @css = {
      barra_display: true,
      barra_filtro: "first visited previous col-sm-2",
      barra_contratante: "active col-sm-2",
      barra_falecido: "next col-sm-2",
      barra_obito: "col-sm-2",
      barra_produtos: "col-sm-2",
      barra_notas: "col-sm-2",
    }
    @contratante = Contratante.new
  end

  def create
  end

  def cpf
  end
end
