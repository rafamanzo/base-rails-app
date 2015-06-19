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

    @cadastro = Cadastro.find(@cadastro_id);

    @cabecalho = cabecalho_nota_contratacao
    
  	kit = PDFKit.new @cabecalho

  	kit.stylesheets << "#{Rails.root}/app/assets/stylesheets/nota_contratacao.css"

	  pdf = kit.to_file "#{Rails.root}/tmp/notas/nota_contratacao_#{@cadastro_id}.pdf"

    @css = {
      barra_filtro: "visited first col-sm-2",
      barra_contratante: "visited col-sm-2",
      barra_falecido: "visited col-sm-2",
      barra_obito: "visited col-sm-2",
      barra_produtos: "previous visited col-sm-2",
      barra_notas: "active col-sm-2 ultimo_ativo",
    }
    

  end

  private
    def cabecalho_nota_contratacao
      "<div id='cabecalho'>
        <div id='logo' style='heigth:25%'>
          <img class='logo' src='#{Rails.root}/app/assets/images/logo_prefeitura_servicos.jpg'>
        </div>
        <div style='margin-top:-20px;'>
          <div id='titulo' style='float:right;margin-top:-100px'>
            <h3><b>Serviço Funerário do Município de São Paulo</b></h3>
          </div>
          <div id='subtitulo' style='float:right;margin-top:-60px;margin-right:25px;'>
            Rua da Consolação, 247 5º e 6º Andar - Centro <br/>
          </div>
          <div id='subtitulo2' style='float:right;margin-top:-40px;margin-right:120px;'>
            CNPJ: 47.261.202/0001-60
          </div>
          <div id='horario' style='float:right;'>
          <b>#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}</b>
          </div>
        </div>
        <div style='margin-top:30px;text-align: center;'>
          <b>NOTA DE CONTRATAÇÃO DE FUNERAL</b>
        </div>
        <div style='text-align: center;border-bottom:1px solid black; height: 40px;'>
          DISK 24 HORAS 0800-109850
        </div>
      </div>";
    end
end
