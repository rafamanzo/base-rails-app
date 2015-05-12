class Falecido < ActiveRecord::Base
  belongs_to :localizacao
  has_one :cadastro

  def localizacao= params
  	if params.kind_of? Localizacao
  		@localizacao = localizacao
  	else
  		@localizacao = Localizacao.new(params)
  	end
  end
end
