class FalecidosController < ApplicationController
  def new
    @cadastro_id = params[:cadastro_id]

    @falecido = Falecido.new

  	@css = {
  		barra_filtro: "visited first col-sm-2",
  		barra_contratante: "previous visited col-sm-2",
  		barra_falecido: "active col-sm-2",
  		barra_obito: "next col-sm-2",
  		barra_produtos: "col-sm-2",
  		barra_notas: "col-sm-2",
  	}
  end

  def create
    cadastro_id = params[:cadastro_id]
    cadastro = Cadastro.find(cadastro_id)
    cadastro.falecido = Falecido.new(falecido_params)
    if cadastro.save
      redirect_to new_dados_obito_path(cadastro_id)
    else 
      render new_falecido_path(cadastro_id)
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
                              :idade_pai, :deixa_filhos, localizacao: [:endereco, :bairro,
                              :numero, :cidade, :complemento, :cep, :estado])
  end
end
