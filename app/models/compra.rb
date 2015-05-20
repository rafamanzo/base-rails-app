class Compra < ActiveRecord::Base
	belongs_to :cadastro
	has_one :urna, class_name: "ItemCompra",as: :item
	has_one :revestimento, class_name: "ItemCompra", as: :item
	has_one :tipo_sepultamento, class_name: "ItemCompra", as: :item
	has_one :transporte_carreto, class_name: "ItemCompra", as: :item
	has_one :transporte_enterro, class_name: "ItemCompra", as: :item
	has_one :sepultamento, class_name: "ItemCompra", as: :item
	has_one :outros, class_name: "ItemCompra", as: :item
end
