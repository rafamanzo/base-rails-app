class AddFalecidoRefToNascimentoObitosAndFilhos < ActiveRecord::Migration
  def change
    add_reference :nascimento_obitos, :falecido, index: true, foreign_key: true
    add_reference :filhos, :falecido, index: true, foreign_key: true
  end
end
