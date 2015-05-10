class FiltroController < ApplicationController
  def index
  	@css = {
  		barra_filtro: '""',
  		barra_contratante: '""',
  		barra_falecido: '""',
  		barra_obito: '""',
  		barra_produtos: '""',
  		barra_notas: '""',
  	}
  end
end
