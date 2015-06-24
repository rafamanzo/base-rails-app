require 'rails_helper'

RSpec.describe DadosObitosController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      cadastro = FactoryGirl.create(:cadastro)
      get :new, cadastro_id: cadastro.id
      expect(response).to have_http_status(:success)
    end
  end
end
