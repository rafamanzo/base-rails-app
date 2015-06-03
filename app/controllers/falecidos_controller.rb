class FalecidosController < ApplicationController
  def new
    @cadastro_id = params[:cadastro_id]
    cadastro = Cadastro.find(@cadastro_id)
    @falecido = Falecido.new
    @falecido.build_localizacao

  	@css = css
  end

  def create
    @cadastro_id = params[:cadastro_id]
    @falecido = Falecido.new(falecido_params)
    if @falecido.save
      cadastro = Cadastro.find(@cadastro_id)
      cadastro.falecido = @falecido
      cadastro.save
      redirect_to new_dados_obito_path(@cadastro_id)
    else
      @css = css
      render 'new'
    end
  end

  private
  def falecido_params
    params.require(:falecido).permit(:nome, :sexo, :cor, :naturalidade,
                              :nascimento, :profissao, :documento, :numero_documento, :cpf,
                              :estado_civil, :marca_passo, :eleitor, :reservista, :inss,
                              :inventariar, :testamento, :beneficio, :peso, :altura, :nome_mae,
                              :naturalidade_mae, :estado_civil_mae, :idade_mae, :profissao_mae,
                              :nome_pai, :naturalidade_pai, :estado_civil_pai, :profissao_pai,
                              :idade_pai, :deixa_filhos, localizacao_attributes: [:endereco, :bairro,
                              :numero, :cidade, :complemento, :cep, :estado])
  end

  def css
    {
      barra_filtro: "visited first col-sm-2",
      barra_contratante: "previous visited col-sm-2",
      barra_falecido: "active col-sm-2",
      barra_obito: "next col-sm-2",
      barra_produtos: "col-sm-2",
      barra_notas: "col-sm-2",
    }
  end
end

