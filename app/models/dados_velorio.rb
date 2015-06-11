class DadosVelorio < ActiveRecord::Base
  belongs_to :dados_obito

  # validates :local_velorio, presence: true, length: {maximum: 255}, numericality: false
  # validates :endereco, presence: true, length: {maximum: 255}, numericality: false
  # validates :data_saida, presence: true
  # validates :hora_saida, presence: true, length: {maximum: 5}
  # validates :crematorio, presence: true, length: {maximum: 255}, numericality: false
  # validates :endereco_crematorio, presence: true, length: {maximum: 255}, numericality: false
  # validates :data_cremacao, presence: true
  # validates :hora_cremacao, presence: true, length: {maximum: 5}
end
