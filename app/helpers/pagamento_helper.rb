module PagamentoHelper
	def tipos_pagamento
		['Dinheiro', 'Crédito', 'Débito']
	end

	def bandeiras
		['Mastercard', 'Visa', 'Cielo']
	end

	def parcelamentos
		['1x', '2x', '3x', '4x', '5x', '6x', '7x', '8x', '9x']
	end
end
