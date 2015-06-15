class FiltroController < ApplicationController
  def index
  	@css = {
      barra_display_none: true,
  		barra_filtro: "",
  		barra_contratante: "",
  		barra_falecido: "",
  		barra_obito: "",
  		barra_produtos: "",
  		barra_notas: "",
  	}
  end

  def create
    cadastro = Cadastro.new
    cadastro.tipo_operacao = params[:operacao]
    cadastro.tipo_contratacao = params[:contratacao]
    cadastro.destino_final = params[:destino]
    cadastro.save
    redirect_to new_contratante_path(cadastro)
  end
end
