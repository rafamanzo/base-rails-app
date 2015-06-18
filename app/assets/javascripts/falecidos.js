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
        //$("#dadosCasamentos").hide();
      }
      /* Nao existe ainda */
      else if ($("#estado_civil").val() == "Casado") {
        //$("#dadosCasamentos").show();
        $("#dadosCertidaoNascimento").hide();
      }
      else
      {
        $("#dadosCertidaoNascimento").hide();
        //$("#dadosCasamentos").hide();
        /* Viuvos tem quais campos? */
      }
    }
    else {
    	$("#dadosCertidaoNascimento").hide();
      //$("#dadosCasamentos").hide();
    }
}

function mostraOuEscondeCamposDeFilhos() {
    if ($("#deixa_filhos").val() == "true" && $("#nascimento_obito").val() == "false") {
      //$("#dadosCamposFilhos").show();
    }
    else {
      //$("#dadosCamposFilhos").hide();
    }
}

function mostraOuEscondeNascimentoObito() {
    if ($("#nascimento_obito").val() == "true") {
      $("#dadosNascimento").show();
      $("#dadosTestemunhas").show();
      $("#dadosFamiliares").show();

      //Esconde outros.
      $("#dadosCertidaoNascimento").hide();
      //$("#dadosCasamentos").hide();
      //$("#dadosCamposFilhos").hide();
    }
    else {
      $("#dadosFamiliares").hide();
      $("#dadosTestemunhas").hide();
      $("#dadosNascimento").hide();

      //Mostra outros?
      mostraOuEscondeCamposDeFilhos();
      mostraOuEscondeDadosEstadoCivil();
    }
}