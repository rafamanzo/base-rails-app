function mostraOuEscondeDadosCertidaoNascimento() {
    if ($("#estado_civil").val() == "Solteiro" &&  $("#deixa_filhos").val() == "true") {
    	$("#dadosCertidaoNascimento").show();
    } else {
    	$("#dadosCertidaoNascimento").hide();
    }
}