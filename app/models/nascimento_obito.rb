class NascimentoObito < ActiveRecord::Base
  belongs_to :falecido
  has_many :testemunhas

  accepts_nested_attributes_for :testemunhas
<<<<<<< HEAD
  validates_associated :testemunhas


  validates :local_nascimento, presence: { message: "não pode ser vazio."}, length: {maximum: 255, message: "pode ter no máximo 255 caracteres."}, if: :valida?
  validates :data_nascimento, presence: { message: "não pode ser vazio."}, if: :valida?
  validates :avo_paterno, :avo_materno, :avo_paterna, :avo_materna, :gravidez, presence: { message: "não pode ser vazio."}, length: {maximum: 255, message: "pode ter no máximo 255 caracteres."}, if: :valida?
  validates :semanas_gestacao, presence: { message: "não pode ser vazio."}, numericality: {only_integer: true, message: "só pode conter numeros."}, allow_blank: true


  def valida?
    @valida ||= false
    @valida
  end

  def valida= param
    @valida = param
  end
=======

  # validates :local_nascimento, presence:true, length: {maximum: 255}, numericality: false
  # validates :data_nascimento, presence:true
  # validates :avo_paterno, presence:true, length: {maximum: 255}, numericality: false
  # validates :avo_materno, presence:true, length: {maximum: 255}, numericality: false
  # validates :avo_paterna, presence:true, length: {maximum: 255}, numericality: false
  # validates :avo_materna, presence:true, length: {maximum: 255}, numericality: false
  # validates :semanas_gestacao, presence:true, numericality: true
  # validates :gravidez, presence:true, length: {maximum: 255}, numericality: false
>>>>>>> 508fce9c97298c27e67807d362ce642c22d13781
end
