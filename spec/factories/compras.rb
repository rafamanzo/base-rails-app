FactoryGirl.define do
  factory :compra do
    remocao_local_falecimento false
    local_remocao nil
    endereco_remocao nil
    observacoes ""
    valor_total 10.3
    item_compras []
  end

end
