$(document).ready(function() {
  mostraOuEscondeNascimentoObito();
  mostraOuEscondeDadosEstadoCivil();
  mostraOuEscondeCamposDeFilhos();
});

function mostraOuEscondeDadosEstadoCivil() {
    console.log('teste')
    if($("#nascimento_obito").val() == "false"){
      if ($("#estado_civil").val() == "Solteiro") {
      	$("#dadosCertidaoNascimento").show();
        $("#dadosCasamentos").hide();
      }
      /* Nao existe ainda */
      else if ($("#estado_civil").val() == "Casado") {
        $("#dadosCasamentos").show();
        $("#dadosCertidaoNascimento").hide();
      }
      else
      {
        $("#dadosCertidaoNascimento").hide();
        $("#dadosCasamentos").hide();
        /* Viuvos tem quais campos? */
      }
    }
    else {
    	$("#dadosCertidaoNascimento").hide();
      $("#dadosCasamentos").hide();
    }
}

function mostraOuEscondeCamposDeFilhos() {
    if ($("#deixa_filhos").val() == "true" && $("#nascimento_obito").val() == "false") {
      $("#dadosCamposFilhos").show();
    }
    else {
      $("#dadosCamposFilhos").hide();
    }
}

function mostraOuEscondeNascimentoObito() {
    if ($("#nascimento_obito").val() == "true") {
      $("#dadosNascimento").show();
      $("#dadosTestemunhas").show();
      $("#dadosFamiliares").show();
      $("#dadosGravidez").show();

      //Esconde outros.
      $("#dadosCertidaoNascimento").hide();
      $("#dadosCasamentos").hide();
      $("#dadosCamposFilhos").hide();
    }
    else {
      $("#dadosFamiliares").hide();
      $("#dadosTestemunhas").hide();
      $("#dadosNascimento").hide();
      $("#dadosGravidez").hide();

      //Mostra outros?
      mostraOuEscondeCamposDeFilhos();
      mostraOuEscondeDadosEstadoCivil();
    }
}

function calculaIdade(d) {
	var date = new Date(d)
	
	year = date.getFullYear();
    month = date.getMonth() + 1;
    day = date.getDate();

    $("#idade").val(_calculaIdade(year, month, day));
}

function _calculaIdade(ano_aniversario, mes_aniversario, dia_aniversario) {
    var d = new Date,
    ano_atual = d.getFullYear(),
    mes_atual = d.getMonth() + 1,
    dia_atual = d.getDate(),

    ano_aniversario = +ano_aniversario,
    mes_aniversario = +mes_aniversario,
    dia_aniversario = +dia_aniversario,

    quantos_anos = ano_atual - ano_aniversario;

    if (mes_atual < mes_aniversario || mes_atual == mes_aniversario && dia_atual < dia_aniversario) {
        quantos_anos--;
    }

    return quantos_anos < 0 ? 0 : quantos_anos;
}

function novoFilho() {  
  $linha_nova = $('#row_filho').clone();
  $("#table_filhos").append($linha_nova);
}

function removerFilho(e) {
  var trs = $("#removeFilho").parent().parent().parent().children().size();
  if (trs > 2)
    e.parentNode.parentNode.remove();
  else
    alert("É necessário listar pelo menos um filho!");
}

function novoCasamento() {  
  $linha_nova = $('#row_casamento').clone();
  $("#table_casamento").append($linha_nova);
}

function removerCasamento(e) {
  var trs = $("#removeCasamento").parent().parent().parent().children().size();
  if (trs > 2)
    e.parentNode.parentNode.remove();
  else
    alert("É necessário listar pelo menos um casamento!");
}