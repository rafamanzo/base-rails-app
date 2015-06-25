function verifica_acao_velorio(){
	if($("#sera_velado").val() == 'true'){
		$('#div_dados_valorio').show();
	}else{
		$('#div_dados_valorio').hide();
	}
}
