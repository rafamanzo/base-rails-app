class AddFalecidoRefToCertidaoNascimento < ActiveRecord::Migration
  def change
    add_reference :certidao_nascimentos, :falecido, index: true, foreign_key: true
  end
end
