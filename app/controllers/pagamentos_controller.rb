class PagamentosController < ApplicationController
  def new
  	@cadastro_id = params[:cadastro_id]
  	@cadastro = Cadastro.find(@cadastro_id)
  	puts " == #{@cadastro_id}"
  	@pagamento = Pagamento.new
  	@pagamento.info_pagamento.build
    @pagamento

    @css = css
  end

  def create
  	@cadastro_id = params[:cadastro_id]
    @pagamento = Pagamento.new(pagamemto_params)
    @cadastro = Cadastro.find(@cadastro_id)

    if @pagamento.save
      @cadastro.pagamento = @pagamento
      @pagamento.save
      
      redirect_to root_path
      
    else
      @css = css
      render 'new'
    end
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

  private
	def pagamento_params
    params.require(:pagamento).permit(:emitente_contratante, :convenio, :valor_restante,
                       :valor_total, info_pagamento_attributes: [
                        :emitente, :rg, :telefone, :tipo, :bandeira, :parcelamento,
                        :pin_pad, :autorizacao, :cv_doc, :valor
                     ])
  end
end
