class PagamentoController < ApplicationController
  def new
  	@cadastro_id = params[:cadastro_id]
  	@pagamento
    @css = css
  end

  def create
  end

	def css
	{
	  barra_filtro: "visited first col-sm-2",
	  barra_contratante: "visited col-sm-2",
	  barra_falecido: "visited previous col-sm-2",
	  barra_obito: "active col-sm-2",
	  barra_produtos: "next col-sm-2",
	  barra_notas: "col-sm-2",
	}
	end
end
