class NascimentoObito < ActiveRecord::Base
  belongs_to :falecido
  has_many :testemunhas

  accepts_nested_attributes_for :testemunhas

  # validates :local_nascimento, presence:true, length: {maximum: 255}, numericality: false
  # validates :data_nascimento, presence:true
  # validates :avo_paterno, presence:true, length: {maximum: 255}, numericality: false
  # validates :avo_materno, presence:true, length: {maximum: 255}, numericality: false
  # validates :avo_paterna, presence:true, length: {maximum: 255}, numericality: false
  # validates :avo_materna, presence:true, length: {maximum: 255}, numericality: false
  # validates :semanas_gestacao, presence:true, numericality: true
  # validates :gravidez, presence:true, length: {maximum: 255}, numericality: false
end
