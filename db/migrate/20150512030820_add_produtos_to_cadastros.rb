class AddProdutosToCadastros < ActiveRecord::Migration
  def change
  	add_reference :cadastros, :produto, index: true, foreign_key: true
  end
end
