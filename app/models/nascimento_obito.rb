class NascimentoObito < ActiveRecord::Base
  belongs_to :falecido
  has_many :testemunhas

  accepts_nested_attributes_for :testemunhas
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
end
