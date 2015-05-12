class ContratantesController < ApplicationController
  def new
    @cadastro_id = params[:cadastro_id]

    @contratante = Contratante.new
    @css = {
      barra_filtro: "first visited previous col-sm-2",
      barra_contratante: "active col-sm-2",
      barra_falecido: "next col-sm-2",
      barra_obito: "col-sm-2",
      barra_produtos: "col-sm-2",
      barra_notas: "col-sm-2",
    }
  end

  def create
    cadastro_id = params[:cadastro_id]
    cadastro = Cadastro.find(cadastro_id)
    cadastro.contratante = Contratante.new(contratante_params)
    if cadastro.save
      redirect_to new_falecido_path(cadastro_id)
    else 
      render new_contratante_path(cadastro_id)
    end
  end

  def cpf
    @contratante = Contratante.find_by_cpf cpf
    respond_to do |format|
      format.html {redirect_to :back}
      format.js
    end
  end

  private
  def contratante_params
    params.require(:contratante).permit(:nome_completo, :cpf, :rg, :profissao, :parentesco, :telefone_residencial,
                                        :telefone_celular, :email, :nome_mae, :cnpj, :nome_empresarial,
                                        localizacao: [:endereco, :bairro, :numero, :cidade, :complemento,
                                        :cep, :estado])
  end
end
