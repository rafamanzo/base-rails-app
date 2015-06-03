class AddFieldsToNascimentoObitos < ActiveRecord::Migration
  def change
    add_column :nascimento_obitos, :hora_nascimento, :string
    add_reference :testemunhas, :nascimento_obito, index: true, foreign_key: true
  end
end
