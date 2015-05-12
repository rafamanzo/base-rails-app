class Localizacao < ActiveRecord::Base
	has_one :falecido
	has_one :contratante
end
