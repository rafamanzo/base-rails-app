class ProdutosController < ApplicationController
  def new
  	@css = {
      barra_display: true,
  		barra_filtro: "visited first col-sm-2",
  		barra_contratante: "visited col-sm-2",
  		barra_falecido: "visited col-sm-2",
  		barra_obito: "previous col-sm-2",
  		barra_produtos: "active col-sm-2",
  		barra_notas: "next col-sm-2",
  	}
  end

  def create
  end
end
