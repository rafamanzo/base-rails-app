function mostraOuEscondeDadosCertidaoNascimento() {
    if ($("#estado_civil").val() == "Solteiro" &&  $("#deixa_filhos").val() == "true") {
    	$("#dadosCertidaoNascimento").show();
    } else {
    	$("#dadosCertidaoNascimento").hide();
    }
}

function mostraOuEscondeDadosNascimento() {
    if ($("#nascimento_obito").val() == "true") {
      $("#dadosNascimento").show();
    } else {
      $("#dadosNascimento").hide();
    }
}

function mostraOuEscondeDadosFamiliares() {
    if ($("#nascimento_obito").val() == "true") {
      $("#dadosFamiliares").show();
    } else {
      $("#dadosFamiliares").hide();
    }
}

function mostraOuEscondeDadosTestemunhas() {
    if ($("#nascimento_obito").val() == "true") {
      $("#dadosTestemunhas").show();
    } else {
      $("#dadosTestemunhas").hide();
    }
}