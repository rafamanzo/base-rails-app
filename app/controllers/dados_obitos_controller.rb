class DadosObitosController < ApplicationController
  def new
    @cadastro_id = params[:cadastro_id]

    @dados_obito = DadosObito.new
    
  	@css = {
  		barra_filtro: "visited first col-sm-2",
  		barra_contratante: "visited col-sm-2",
  		barra_falecido: "visited previous col-sm-2",
  		barra_obito: "active col-sm-2",
  		barra_produtos: "next col-sm-2",
  		barra_notas: "col-sm-2",
  	}
  end

  def create
    cadastro_id = params[:cadastro_id]
    cadastro = Cadastro.find(cadastro_id)
    cadastro.dados_obito = DadosObito.new(dados_obito_params)
    if cadastro.save
      redirect_to new_compra_path(cadastro_id)
    else 
      render new_dados_obito_path(cadastro_id)
    end
  end

  private
  def dados_obito_params
    params.require(:dados_obito).permit(:local_falecimento, :cartorio, :data_falecimento, :hora_falecimento, 
	:proaim, :causa_mortis, :cemiterio, :endereco, :data_sepultamento, :hora_sepultamento, :medico, :crm, :observacoes)
  end
end
