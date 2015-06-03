class AddEmpresaRefToContratante < ActiveRecord::Migration
  def change
    add_reference :contratantes, :empresa, index: true, foreign_key: true
  end
end
