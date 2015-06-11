class Casamento < ActiveRecord::Base
  belongs_to :falecido

  # validates :nome, presence: true, length: {maximum: 255}, numericality: false
  # validates :data_casamento, presence: true
  # validates :cartorio, presence: true, length: {maximum: 255}, numericality: false
  # validates :cidade, presence: true, length: {maximum: 255}, numericality: false
  # validates :uf, presence: true
  # validates :livro, presence: true, numericality: true
  # validates :folha, presence: true, numericality: true
  # validates :numero, presence: true, numericality: true
end
