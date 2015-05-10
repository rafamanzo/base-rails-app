function buscaPorCpf() {
	var cpf = $("#cpf").val();
	
	$.post("busca/cpf/" + cpf, function(contratante) {
		
		if (contratante != "") {
			//$("#cpf").val(contratante.cpf);
			$("#nomeCompleto").val(contratante.nomeCompleto);
			$("#rg").val(contratante.rg);
			$("#profissao").val(contratante.profissao);
			$("#grauParentesco").val(contratante.grauParentesco);
			$("#nomeMae").val(contratante.nomeMae);
			$("#profissao").val(contratante.profissao);
			$("#email").val(contratante.email);
			
			$("#telResidencial").val(contratante.telResidencial);
			$("#telCelular").val(contratante.telCelular);
			
			$("#cep").val(contratante.localizacao.cep);
			$("#endereco").val(contratante.localizacao.endereco);
			$("#numeroEndereco").val(contratante.localizacao.numeroEndereco);
			$("#complementoEndereco").val(contratante.localizacao.complementoEndereco);
			$("#bairro").val(contratante.localizacao.bairro);
			$("#cidade").val(contratante.localizacao.cidade);
			$("#estado").val(contratante.localizacao.estado);
		}
		
	});
}