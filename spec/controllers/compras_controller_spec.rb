require 'rails_helper'

RSpec.describe ComprasController, type: :controller do
  describe "GET #new" do
    it "returns http success" do
      cadastro = FactoryGirl.create(:cadastro)
      get :new, cadastro_id: cadastro.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "returns http success for a valid PNS" do
      cadastro = FactoryGirl.create(:cadastro)
      compra = FactoryGirl.build(:compra)
      compra_hash = Hash.new
      compra.instance_variables.each {|var| compra_hash[var.to_s.delete("@")] = compra.instance_variable_get(var) }
      post :create, cadastro_id: cadastro.id, compra: compra_hash
      expect(response).to have_http_status(:redirect)
    end
    it "returns http success for a valid GD" do
      cadastro = FactoryGirl.create(:cadastro_gd)
      compra = FactoryGirl.build(:compra)
      compra_hash = Hash.new
      compra.instance_variables.each {|var| compra_hash[var.to_s.delete("@")] = compra.instance_variable_get(var) }
      post :create, cadastro_id: cadastro.id, compra: compra_hash
      expect(response).to have_http_status(:redirect)
    end
    it "returns http success for a invalid PNS" do
      cadastro = FactoryGirl.create(:cadastro)
      compra = FactoryGirl.build(:compra)
      Compra.any_instance.expects(:save).returns(false)
      compra_hash = Hash.new
      compra.instance_variables.each {|var| compra_hash[var.to_s.delete("@")] = compra.instance_variable_get(var) }
      post :create, cadastro_id: cadastro.id, compra: compra_hash
      expect(response).to have_http_status(:success)
    end
  end
end
