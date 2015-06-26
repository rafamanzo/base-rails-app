function novoPagamento() {	
	$linha_nova = $('#row_pagamento').clone();
	$("#table_pagamentos").append($linha_nova);
}

function removerPagamento(e) {
	var trs = $("#removePagamento").parent().parent().parent().children().size();
	if (trs > 2)
		e.parentNode.parentNode.remove();
	else
		alert("É necessário informar pelo menos uma forma de pagamento!");
}

function executaAcao(e) {
    var evtobj=window.event? event : e //distinguish between IE's explicit event object (window.event) and Firefox's implicit.
    var unicode=evtobj.charCode? evtobj.charCode : evtobj.keyCode
    var actualkey=String.fromCharCode(unicode)

    verifica_acao(actualkey);

    // alert(actualkey);
}

function verifica_acao (key) {
	if (key.toUpperCase() == 'N') {
		novoPagamento();
	}
}
document.onkeypress = executaAcao
