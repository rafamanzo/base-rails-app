class ComprasController < ApplicationController
  def new
    @cadastro_id = params[:cadastro_id]

    @compra = Compra.new
    @compra.build_urna
    @compra.build_revestimento
    @compra.build_tipo_sepultamento
    @compra.build_transporte_carreto
    @compra.build_transporte_enterro
    @compra.build_sepultamento
    @compra.build_outros
    
    @css = {
  		barra_filtro: "visited first col-sm-2",
  		barra_contratante: "visited col-sm-2",
  		barra_falecido: "visited col-sm-2",
  		barra_obito: "previous visited col-sm-2",
  		barra_produtos: "active col-sm-2",
  		barra_notas: "next col-sm-2",
  	}
  end

  def create
    @cadastro_id = params[:cadastro_id]
    cadastro = Cadastro.find(@cadastro_id)
    @compra = Compra.new(compra_params)
    if @compra.save
      cadastro.compra = @compra
      cadastro.save
      # TODO: Redirecionar para a tela de nota fiscal
      redirect_to root_path(@cadastro_id)
    else 
      render 'new'
    end
  end

  private
  def compra_params
    params.require(:compra).permit(:remocao_local_falecimento, :local_remocao, :endereco_remocao,
                                   :observacoes, :valor_total, 
                                   urna_attributes: [:quatidade, :nome, :valor_unitario, :unidade_medida, :dimensoes],
                                   revestimento_attributes: [:quatidade, :nome, :valor_unitario, :unidade_medida, :dimensoes],
                                   tipo_sepultamento_attributes: [:quatidade, :nome, :valor_unitario, :unidade_medida, :dimensoes],
                                   transporte_carreto_attributes: [:quatidade, :nome, :valor_unitario, :unidade_medida, :dimensoes],
                                   transporte_enterro_attributes: [:quatidade, :nome, :valor_unitario, :unidade_medida, :dimensoes],
                                   sepultamento_attributes: [:quatidade, :nome, :valor_unitario, :unidade_medida, :dimensoes],
                                   outros_attributes: [:quatidade, :nome, :valor_unitario, :unidade_medida, :dimensoes])
  end
end
