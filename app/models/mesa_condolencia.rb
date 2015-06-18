# TODO: Mover para módulo de estoque quando este existir
class MesaCondolencia < ActiveRecord::Base
  has_one :elemento_kit, as: :produto
end
