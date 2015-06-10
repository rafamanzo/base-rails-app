class RemoveEmpresaRefFromContratante < ActiveRecord::Migration
  def change
    remove_reference :contratantes, :empresa, index: true, foreign_key: true
  end
end
