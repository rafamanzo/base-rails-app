class Compra < ActiveRecord::Base
	belongs_to :cadastro
	has_many :item_compras
	accepts_nested_attributes_for :item_compras

	validates :local_remocao, :endereco_remocao, presence: true, length: {maximum: 50}, if: :remove_local_falecimento?

  def remove_local_falecimento?
    remocao_local_falecimento == false
  end

  def urna
  	@urna ||= get_item_compra "urna"
  	@urna
  end

	def revestimento
  	@revestimento ||= get_item_compra "revestimento"
  	@revestimento
  end

  def enfeite
  	@enfeite ||= get_item_compra "enfeite"
  	@enfeite
  end

	def veu
  	@veu ||= get_item_compra "veu"
  	@veu
  end

	def iluminacao
  	@iluminacao ||= get_item_compra "iluminacao"
  	@iluminacao
  end

  def tipo_sepultamento
  	@tipo_sepultamento ||= get_item_compra "tipo_sepultamento"
  	@tipo_sepultamento
  end

	def carro_carreto
  	@carro_carreto ||= get_item_compra "carro_carreto"
  	@carro_carreto
  end

	def carro_remocacao
  	@carro_remocacao ||= get_item_compra "carro_remocacao"
  	@carro_remocacao
  end

  def carro_enterro
  	@carro_enterro ||= get_item_compra "carro_enterro"
  	@carro_enterro
  end

	def taxa_sepultamento
  	@taxa_sepultamento ||= get_item_compra "taxa_sepultamento"
  	@taxa_sepultamento
  end

  def essa_paramento
  	@essa_paramento ||= get_item_compra "essa_paramento"
  	@essa_paramento
  end

  def taxa_velorio
  	@taxa_velorio ||= get_item_compra "taxa_velorio"
  	@taxa_velorio
  end

	def mesa_condolencia
  	@mesa_condolencia ||= get_item_compra "mesa_condolencia"
  	@mesa_condolencia
  end

  def outras
  	@outras ||= get_item_compra "outras"
  	@outras
  end

  private
  def get_item_compra(tipo)
		item_compras.select{|i| i.tipo == tipo}.first
	end
end