class ContratantesController < ApplicationController
  def new
    @cadastro_id = params[:cadastro_id]

    @cadastro = Cadastro.find(@cadastro_id)
    @contratante = Contratante.new
    @contratante.build_localizacao
    @contratante.build_empresa

    @css = css
  end

  def create
    @cadastro_id = params[:cadastro_id]
    @contratante = Contratante.new(contratante_params)
    @contratante.localizacao.valida = true
    byebug

    if @contratante.save
      cadastro = Cadastro.find(@cadastro_id)
      cadastro.contratante = @contratante
      cadastro.save
      redirect_to new_falecido_path(@cadastro_id)
    else
      @cadastro = Cadastro.find(@cadastro_id)
      @css = css
      render 'new'
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
                                        :telefone_celular, :email, :nome_mae,
                                        localizacao_attributes:
                                        [:endereco, :bairro, :numero, :cidade, :complemento,:cep, :estado],
                                        empresa_attributes:
                                        [:nome, :cnpj])
  end

  def css
    {
      barra_filtro: "first visited previous col-sm-2",
      barra_contratante: "active col-sm-2",
      barra_falecido: "next col-sm-2",
      barra_obito: "col-sm-2",
      barra_produtos: "col-sm-2",
      barra_notas: "col-sm-2",
    }
  end
end
