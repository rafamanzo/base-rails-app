# TODO: Mover para módulo de estoque quando este existir
class CarroCarreto < ActiveRecord::Base
  has_one :elemento_kit, as: :produto
end

