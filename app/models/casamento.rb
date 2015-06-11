class Casamento < ActiveRecord::Base
  belongs_to :falecido
  validates :nome, presence: { message: "não pode ser vazio."}, length: {maximum: 255, message: "pode ter no máximo 255 caracteres."}, if: :valida?
  validates :livro, :folha, :numero, numericality: {only_integer: true, message: "só pode conter numeros."}, allow_blank: true
  validates :cartorio, :cidade, length: {maximum: 50, message: "pode ter no máximo 50 caracteres."}, if: :valida?
  validates :uf, length: {maximum: 2, message: "pode ter no máximo 2 caracteres."}, if: :valida?


  def valida?
    falecido.valida_casamento?
  end
end
