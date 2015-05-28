//= require filtro
//= require jquery


describe("funcao pago", function() {
  it("testando funcao pago", function() {
    $('body').append('<div id="intro_caixa_botoes"></div><div id="titulo_caixa"></div>')
    pago();
    assert.ok($('#semi_intacto').length);
    assert.ok($('#contratacao_normal').length);
    assert.ok($('#corpo_vindo_de_fora').length);
    assert.ok($('#membro').length);
    console.log($('#titulo_caixa').find('h1')[0].innerText.should.equal('Tipo de Contratação'));
  });

});


