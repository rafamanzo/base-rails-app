class ContratantesController < ApplicationController
  def new
    @css = {
      barra_filtro: '"visited first previous col-sm-2"',
      barra_contratante: '"active col-sm-2"',
      barra_falecido: '"next col-sm-2"',
      barra_obito: '"col-sm-2"',
      barra_produtos: '"col-sm-2"',
      barra_notas: '"col-sm-2"',
    }
  end

  def create
  end

  def cpf
  end
end
