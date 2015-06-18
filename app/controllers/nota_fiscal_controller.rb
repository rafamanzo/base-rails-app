class NotaFiscalController < ApplicationController
  def new
  	@cadastro_id = params[:cadastro_id]

  	@cadastro = Cadastro.find(@cadastro_id);
    
  	@css = {
  		barra_filtro: "visited first col-sm-2",
  		barra_contratante: "visited col-sm-2",
  		barra_falecido: "visited col-sm-2",
  		barra_obito: "visited col-sm-2",
  		barra_produtos: "previous visited col-sm-2",
  		barra_notas: "active col-sm-2 ultimo_ativo",
  	}
  end

  def create
  	@cadastro_id = params[:cadastro_id]

  	cabecalho ="<img class='logo' src='#{Rails.root}/app/assets/images/logo_prefeitura_servicos.jpg'>"

  	kit = PDFKit.new cabecalho

  	kit.stylesheets << "#{Rails.root}/app/assets/stylesheets/nota_contratacao.css"

	  pdf = kit.to_file "#{Rails.root}/tmp/notas/nota_contratacao_#{@cadastro_id}.pdf"
  end
end
