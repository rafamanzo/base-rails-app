# TODO: Mover para módulo de estoque quando este existir
class Revestimento < ActiveRecord::Base
  has_one :elemento_kit, as: :produto
  has_many :dimensaos
end
