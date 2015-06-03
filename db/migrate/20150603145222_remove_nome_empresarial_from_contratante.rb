class RemoveNomeEmpresarialFromContratante < ActiveRecord::Migration
  def change
    remove_column :contratantes, :nome_empresarial, :string
  end
end
