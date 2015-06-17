class Empresa < ActiveRecord::Base
	belongs_to :contratante

  validates :nome, length: {maximum: 200, message: "pode ter no máximo 200 caracteres."}
end
