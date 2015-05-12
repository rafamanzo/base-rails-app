class Cadastro < ActiveRecord::Base
  belongs_to :contratante
  belongs_to :falecido
  belongs_to :dados_obito
  belongs_to :produto
end
