# TODO: Mover para módulo de estoque quando este existir
class Dimensao < ActiveRecord::Base
  belongs_to :urna
  belongs_to :revestimento
end
