# TODO: Mover para módulo de estoque quando este existir
class TaxaSepultamento < ActiveRecord::Base
  has_one :elemento_kit, as: :produto
end
