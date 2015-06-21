function preencheLocalFalecimento(id, local) {
    if ($("#"+id).val() == "true")
        $("#endereco_remocao").val(local);
    else
        $("#endereco_remocao").val("");
}

function enableTaxas(){
    if($('#outros').is(':checked')){
    	$('.tipo_taxa_class').prop("disabled",false);
    	$('#valor_taxa').val("");
    	$('#valor_taxa').prop("disabled",false);

    }else{
    	$('.tipo_taxa_class').prop("disabled",true);
    	$('#valor_taxa').val("");
    	$('#valor_taxa').prop("disabled",true);
    }
}

// function disableIfEqual(id, id_valor, valor) {
// 	id = '#'+id;
// 	if(document.getElementById(id_valor).value==valor) $(id).prop("disabled", true);
// 	else $(id).prop("disabled", false);
// }
