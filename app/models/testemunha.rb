class Testemunha < ActiveRecord::Base
  belongs_to :nascimento_obito

  validates :nome, presence: { message: "não pode ser vazio."}, length: {maximum: 200, message: "pode ter no máximo 200 caracteres."}, if: :valida?
  validates :nacionalidade, presence: { message: "não pode ser vazio."}, length: {maximum: 127, message: "pode ter no máximo 127 caracteres."}, if: :valida?
  validates :profissao, :bairro, length: {maximum: 50, message: "pode ter no máximo 50 caracteres."}, if: :valida?
  validates :endereco, length: {maximum: 127, message: "pode ter no máximo 127 caracteres."}, if: :valida?

  def valida?
    @valida ||= false
    @valida
  end

  def valida= param
    @valida = param
  end
end
