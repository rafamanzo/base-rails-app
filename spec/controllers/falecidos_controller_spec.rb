require 'rails_helper'

RSpec.describe FalecidosController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new, cadastro_id: 1
      expect(response).to have_http_status(:success)
    end
  end
end
