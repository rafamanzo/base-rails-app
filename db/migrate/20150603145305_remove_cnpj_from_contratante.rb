class RemoveCnpjFromContratante < ActiveRecord::Migration
  def change
    remove_column :contratantes, :cnpj, :string
  end
end
