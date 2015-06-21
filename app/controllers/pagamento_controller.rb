class PagamentoController < ApplicationController
  def new
  	@cadastro_id = params[:cadastro_id]
  	@cadastro = Cadastro.find(@cadastro_id)
  	@pagamento = Pagamento.new
    @css = css
  end

  def create
  end

	def css
	{
	  barra_filtro: "visited first col-sm-2",
	  barra_contratante: "visited col-sm-2",
	  barra_falecido: "visited col-sm-2",
	  barra_obito: "visited col-sm-2",
	  barra_produtos: "visited previous col-sm-2",
	  barra_pagamento: "active col-sm-2",
	  barra_notas: "next col-sm-2",
	}
	end
end
