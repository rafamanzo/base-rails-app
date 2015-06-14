# TODO: Mover para módulo de estoque quando este existir
class EssaParamento < ActiveRecord::Base
  has_one :elemento_kit, as: :produto
end
