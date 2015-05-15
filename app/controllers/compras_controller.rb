class ComprasController < ApplicationController
  def new
    @cadastro_id = params[:cadastro_id]

    @produto = Produto.new
    
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
    cadastro_id = params[:cadastro_id]
    cadastro = Cadastro.find(cadastro_id)
    cadastro.produto = Produto.new(produto_params)
    if cadastro.save
      # Redirecionar para a tela de nota fiscal
      redirect_to root_path(cadastro_id)
    else 
      render new_produto_path(cadastro_id)
    end
  end

  private
  def produto_params
    params.require(:produto).permit()
  end
end
