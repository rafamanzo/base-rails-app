function buscaPorCpf() {
	var cpf = $("#cpf").val();
	
	$.post("contratantes/cpf/" + cpf, function(contratante) {
		
		if (contratante != "") {
			//$("#cpf").val(contratante.cpf);
			$("#nome_completo").val(contratante.nome_completo);
			$("#rg").val(contratante.rg);
			$("#profissao").val(contratante.profissao);
			$("#parentesco").val(contratante.parentesco);
			$("#nome_mae").val(contratante.nome_mae);
			$("#profissao").val(contratante.profissao);
			$("#email").val(contratante.email);

			$("#cnpj").val(contratante.cnpj);
			
			$("#telefone_residencial").val(contratante.telefone_residencial);
			$("#telefone_celular").val(contratante.telefone_celular);
			
			$("#cep").val(contratante.localizacao.cep);
			$("#endereco").val(contratante.localizacao.endereco);
			$("#numero_endereco").val(contratante.localizacao.numero);
			$("#complemento_endereco").val(contratante.localizacao.complemento);
			$("#bairro").val(contratante.localizacao.bairro);
			$("#cidade").val(contratante.localizacao.cidade);
			$("#estado").val(contratante.localizacao.estado);
		}
		
	});
}