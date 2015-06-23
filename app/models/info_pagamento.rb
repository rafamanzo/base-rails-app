class InfoPagamento < ActiveRecord::Base
  belongs_to :pagamento

  validates :emitente, :rg, length: {maximum: 255, message: "pode ter no máximo 255 caracteres."}, numericality: false, presence: { message: "não pode ser vazio."}
end
