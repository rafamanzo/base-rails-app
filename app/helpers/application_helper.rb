module ApplicationHelper
	def sexos
		['Marculino', 'Feminino']
	end

	def estados_civis
		['Solteiro', 'Casado', 'Divorciado', 'Viuvo']
	end

	def estados
		['AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 'PE',
			'PI', 'RJ', 'RN', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO']
	end

	def documentos
		['RG', 'RNE']
	end

	def cores
		['Branca', 'Parda', 'Preta', 'Amarela', 'Indigena', 'Desconhecida']
	end

	def categorias_idade
		['Maior', 'Menor']
	end

	def sim_nao
		[['sim', true], ['não', false]]
	end
end
