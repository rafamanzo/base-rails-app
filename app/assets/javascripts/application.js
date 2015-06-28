// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks


function mascara(o,f){
    v_obj=o
    v_fun=f
    setTimeout("execmascara()",1)
}
function execmascara(){
    v_obj.value=v_fun(v_obj.value)
}
 function cpf_mask(v){
    v=v.replace(/\D/g,"")
    v=v.replace(/(\d{3})(\d)/,"$1.$2")
    v=v.replace(/(\d{3})(\d)/,"$1.$2")
    v=v.replace(/(\d{3})(\d{1,2})$/,"$1-$2")
    return v
}
function cep_mask(v){
    v=v.replace(/\D/g,"")
    v=v.replace(/(\d{5})(\d{1,3})$/,"$1-$2")
    return v
}
function telefone_mask(v){
    v=v.replace(/\D/g,"")
    v=v.replace(/(\d{2})(\d)/,"($1) $2")
    v=v.replace(/(\d{4,5})(\d{4})/,"$1-$2")
    return v
}
function hora_mask(v){
    v=v.replace(/\D/g,"")
    v=v.replace(/(\d{1,2})(\d{2})/,"$1:$2")
    return v
}
function dinheiro_mask(v){
    //v=v.replace(/\D/g,"")
    //v=v.replace(/^(\d{1})$/, "0,0$1")
    //v=v.replace(/(\d)(\d{1,2})$/,"$1,$2")
    return v
}

function cnpj_mask(v){
    v=v.replace(/\D/g,"")
    v=v.replace(/(\d{3})(\d)/,"$1.$2")
    v=v.replace(/(\d{3})(\d)/,"$1.$2")
    v=v.replace(/(\d{3})(\d)/,"$1/$2")
    v=v.replace(/(\d{4})(\d)/,"$1-$2")
    return v
}
function disableIfEqual(id, id_valor, valor) {
    id = '#'+id;
    id_valor = '#'+id_valor;

    if($(id_valor).val() == valor) {
        $(id).prop("disabled", true);
        $(id).val("");
    }
    else {
        $(id).prop("disabled", false);
    }
}

function buscaCEP(cep) {
    cep = cep.replace("-","");

    var url = 'http://cep.correiocontrol.com.br/' + cep + '.json';
    $.getJSON(url, function(json){
        $("#endereco").val(json.logradouro);
        $("#bairro").val(json.bairro);
        $("#cidade").val(json.localidade);
        $("#estado").val(json.uf.toUpperCase());
    }).fail(function(){
        alert("CEP não encontrado!");
    });
}

function validaCPF(cpf, id_campo) {
    if (cpf != "" && !valida_cpf(cpf)) {
        alert("CPF inválido.");
        $("#" + id_campo).val("");
        $("#" + id_campo).focus();
    }
}

function valida_cpf(cpf) {
    cpf = cpf.replace('.','');
    cpf = cpf.replace('.','');
    cpf = cpf.replace('-','');
    var numeros, digitos, soma, i, resultado, digitos_iguais;
    digitos_iguais = 1;
    if (cpf.length < 11)
        return false;
    for (i = 0; i < cpf.length - 1; i++)
        if (cpf.charAt(i) != cpf.charAt(i + 1)) {
            digitos_iguais = 0;
            break;
        }
    if (!digitos_iguais) {
        numeros = cpf.substring(0,9);
        digitos = cpf.substring(9);
        soma = 0;
        for (i = 10; i > 1; i--)
            soma += numeros.charAt(10 - i) * i;
        resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
        if (resultado != digitos.charAt(0))
            return false;
        numeros = cpf.substring(0,10);
        soma = 0;
        for (i = 11; i > 1; i--)
            soma += numeros.charAt(11 - i) * i;
        resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
        if (resultado != digitos.charAt(1))
            return false;
        return true;
    } else
        return false;
}
