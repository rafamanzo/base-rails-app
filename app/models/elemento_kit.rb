# TODO: Mover para módulo de estoque quando este existir
class ElementoKit < ActiveRecord::Base
  belongs_to :urna
  belongs_to :produto, polymorphic: true
end
