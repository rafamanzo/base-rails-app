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
