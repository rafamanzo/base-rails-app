class AddFalecidoRefToCasamento < ActiveRecord::Migration
  def change
    add_reference :casamentos, :falecido, index: true, foreign_key: true
  end
end
