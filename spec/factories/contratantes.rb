FactoryGirl.define do
  factory :contratante do
    nome_completo "MyText"
    cpf "000.000.000-00"
    rg "MyString"
    profissao "MyString"
    parentesco "MyString"
    telefone_residencial "(11)1111-1111"
    telefone_celular "(11)1111-1111"
    email "MyString@email.com"
    nome_mae "MyString"
    association :localizacao, factory: :localizacao, strategy: :build
  end
end
