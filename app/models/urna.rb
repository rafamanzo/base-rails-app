# TODO: Mover para módulo de estoque quando este existir
class Urna < ActiveRecord::Base
  has_one :elemento_kit, as: :produto
  has_many :dimensaos
  has_many :elemento_kits
end
