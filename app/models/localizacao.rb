class Localizacao < ActiveRecord::Base
	belongs_to :falecido
	belongs_to :contratante
end
