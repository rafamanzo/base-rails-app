class Falecido < ActiveRecord::Base
  has_one :localizacao
  belongs_to :cadastro

  accepts_nested_attributes_for :localizacao
end