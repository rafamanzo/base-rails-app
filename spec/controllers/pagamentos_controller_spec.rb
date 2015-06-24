require 'rails_helper'

RSpec.describe PagamentosController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      cadastro = FactoryGirl.create(:cadastro)
      get :new, cadastro_id: cadastro.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "returns http success" do
      cadastro = FactoryGirl.create(:cadastro)
      pagamento = FactoryGirl.create(:pagamento)
      pagamento_hash = Hash.new
      pagamento.instance_variables.each {|var| pagamento_hash[var.to_s.delete("@")] = pagamento.instance_variable_get(var) }
      post :create, cadastro_id: cadastro.id, pagamento: pagamento_hash
      expect(response).to have_http_status(:redirect)
    end
  end

end
