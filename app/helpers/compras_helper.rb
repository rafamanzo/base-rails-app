module ComprasHelper
	def tipos_urna
		options_for_select(["Urna fixa"], "Urna fixa")
	end

	def tipos_revestimento
		options_for_select(["Revestimento fixo"], "Revestimento fixo")
	end

	def tipos_sepultamento
		options_for_select(["Qd. Geral Terra s/ Gaveta"], "Qd. Geral Terra s/ Gaveta")
	end

	def dimensoes_urnas
		# Deveria pegar essa informação do banco de dados da loja
		["2,00x0,60x0,40", "1,90x0,60x0,40"]
	end

	def dimensoes_revestimentos
		# Deveria pegar essa informação do banco de dados da loja
		["2,00x0,60x0,40", "1,90x0,60x0,40"]
	end
end
