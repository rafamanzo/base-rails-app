class FalecidosController < ApplicationController
  def new
  	@css = {
  		barra_filtro: '"visited first col-sm-2"',
  		barra_contratante: '"previous visited col-sm-2"',
  		barra_falecido: '"active col-sm-2"',
  		barra_obito: '"next col-sm-2"',
  		barra_produtos: '"col-sm-2"',
  		barra_notas: '"col-sm-2"',
  	}
  end

  def create
  end
end
