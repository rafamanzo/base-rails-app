class Filho < ActiveRecord::Base
  belongs_to :falecido

  validates :nome, presence: { message: "não pode ser vazio."}, length: {maximum: 200, message: "pode ter no máximo 200 caracteres."}, if: :valida?
  validates :observacoes, length: {maximum: 1023, message: "pode ter no máximo 1023 caracteres."}, if: :valida?


  def valida?
    falecido.valida_filho?
  end
end
