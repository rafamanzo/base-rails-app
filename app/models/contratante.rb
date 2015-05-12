class Contratante < ActiveRecord::Base
  belongs_to :localizacao
  has_one :cadastro
end
