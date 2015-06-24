FactoryGirl.define do
  factory :pagamento do
    emitente_contratante false
    convenio "MyString"
    cadastro nil
    valor_restante "9.99"
    valor_total "9.99"
  end

end
