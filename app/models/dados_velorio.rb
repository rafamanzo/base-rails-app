class DadosVelorio < ActiveRecord::Base
  belongs_to :dados_obito

  validates :local_velorio, :endereco, presence: { message: "não pode ser vazio."}, length: {maximum: 255, message: "pode ter no máximo 255 caracteres."}, if: :valida?
  validates :data_saida, presence: { message: "não pode ser vazio."}, if: :valida?
  validates :hora_saida, presence: { message: "não pode ser vazio."}, length: {maximum: 5, message: "inválida."}, if: :valida?

  def valida?
    @valida ||= false
    @valida
  end

  def valida= param
    @valida = param
  end
end
