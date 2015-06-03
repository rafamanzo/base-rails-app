class AddContratanteRefToEmpresa < ActiveRecord::Migration
  def change
    add_reference :empresas, :contratante, index: true, foreign_key: true
  end
end
