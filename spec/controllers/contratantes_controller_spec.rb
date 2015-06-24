require 'rails_helper'

RSpec.describe ContratantesController, type: :controller do

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
      contratante = FactoryGirl.build(:contratante)
      Contratante.any_instance.expects(:save).returns(true).times(2)
      contratante_hash = to_hash contratante
      post :create, cadastro_id: cadastro.id, contratante: contratante_hash
      expect(response).to have_http_status(:redirect)
    end
    it "returns http success for a valid GD" do
      cadastro = FactoryGirl.create(:cadastro_gd)
      contratante = FactoryGirl.build(:contratante)
      Contratante.any_instance.expects(:save).returns(true).times(2)
      contratante_hash = to_hash contratante
      post :create, cadastro_id: cadastro.id, contratante: contratante_hash
      expect(response).to have_http_status(:redirect)
    end
    it "returns http success for a invalid PNS" do
      cadastro = FactoryGirl.create(:cadastro)
      contratante = FactoryGirl.build(:contratante)
      Contratante.any_instance.expects(:save).returns(false)
      contratante_hash = to_hash contratante
      post :create, cadastro_id: cadastro.id, contratante: contratante_hash
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #cpf" do
    it "returns json with contratante data" do
      contratante = FactoryGirl.build(:contratante)
      Contratante.expects(:find_by_cpf).returns(contratante)
      request.env["HTTP_REFERER"] = "where_i_came_from"
      get :cpf, cpf: "000.000.000-00"
      expect(response).to have_http_status(:redirect)
    end
  end

  def to_hash(contratante)
    contratante_hash = Hash.new
    contratante.instance_variables.each {|var| contratante_hash[var.to_s.delete("@")] = contratante.instance_variable_get(var) }
    contratante_hash[:localizacao_attributes] = {}
    contratante.localizacao.instance_variables.each {|var| contratante_hash[:localizacao_attributes][var.to_s.delete("@")] = contratante.localizacao.instance_variable_get(var) }
    contratante_hash
  end
end