//= require application

describe("cpf", function() {
  it("testando mascara de cpf", function() {
    cpf_mask('41884916805').should.equal('418.849.168-05');
  });

});

describe("telefone", function() {
  it("testando mascara telefone", function() {
    telefone_mask('11912345678').should.equal('(11) 91234-5678');
  });

});

describe("hora", function() {
  it("testando mascara hora", function() {
    hora_mask('1232').should.equal('12:32');
  });

  it("testando mascara hora com 1 digito", function() {
    hora_mask('123').should.equal('1:23');
  });

});

describe("cep", function() {
  it("testando mascara cep", function() {
    cep_mask('12345678').should.equal('12345-678');
  });

});

describe("cnpj", function() {
  it("testando mascara cnpj", function() {
    cnpj_mask('123456789123456').should.equal('123.456.789/1234-56');
  });

});
