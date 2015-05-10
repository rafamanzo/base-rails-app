class CreateTestemunhas < ActiveRecord::Migration
  def change
    create_table :testemunhas do |t|
      t.string :nome
      t.string :estado_civil
      t.string :nacionalidade
      t.string :profissao
      t.string :endereco
      t.string :bairro

      t.timestamps null: false
    end
  end
end
