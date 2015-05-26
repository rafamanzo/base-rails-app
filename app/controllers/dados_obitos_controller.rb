class DadosObitosController < ApplicationController
  def new
    @cadastro_id = params[:cadastro_id]

    @dados_obito = DadosObito.new

    @css = css
  end

  def create
    @cadastro_id = params[:cadastro_id]
    @dados_obito = DadosObito.new(dados_obito_params)
    if @dados_obito.save
      cadastro = Cadastro.find(@cadastro_id)
      cadastro.dados_obito = @dados_obito
      cadastro.save
      redirect_to new_compra_path(@cadastro_id)
    else
      @css = css
      render 'new'
    end
  end

  private
  def dados_obito_params
    params.require(:dados_obito).permit(:local_falecimento, :data_falecimento, :cartorio, :proaim,
                                        :cemiterio, :endereco, :data_sepultamento, :medico, :crm,
                                        :observacoes, :causa_mortis, :hora_falecimento, :hora_sepultamento)
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
