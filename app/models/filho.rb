class Filho < ActiveRecord::Base
  belongs_to :falecido

  # validates :nome, presence:true, length: {maximum: 255}, numericality: false
  # validates :categoria_idade, presence:true, length: {maximum: 255}, numericality: false
  # validates :observacoes, presence:true, length: {maximum: 1047}, numericality: false
end
