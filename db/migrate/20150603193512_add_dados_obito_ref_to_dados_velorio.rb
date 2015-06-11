class AddDadosObitoRefToDadosVelorio < ActiveRecord::Migration
  def change
    add_reference :dados_velorios, :dados_obito, index: true, foreign_key: true
  end
end
