class UpdateProdutos < ActiveRecord::Migration
  def change
    drop_table :produtos
    create_table :urnas do |t|
      t.string :nome
      t.integer :quantidade

      t.timestamps null: false
    end
    create_table :revestimentos do |t|
      t.string :nome
      t.integer :quantidade

      t.timestamps null: false
    end
    create_table :dimensoes do |t|
      t.reference :urnas, index: true, foreign_key: true
      t.reference :revestimentos, index: true, foreign_key: true
      t.string :dimensoes
      t.string :unidade_de_medida

      t.timestamps null: false
    end
    create_table :enfeites do |t|
      t.string :nome
      t.integer :quantidade

      t.timestamps null: false
    end
    create_table :veus do |t|
      t.string :nome
      t.integer :quantidade

      t.timestamps null: false
    end
    create_table :iluminacaos do |t|
      t.string :nome
      t.integer :quantidade

      t.timestamps null: false
    end
    create_table :tipo_sepultamento do |t|
      t.string :nome

      t.timestamps null: false
    end
    create_table :carro_carretos do |t|
      t.boolean :enabled
      t.integer :quantidade

      t.timestamps null: false
    end
    create_table :carro_remocaos do |t|
      t.boolean :enabled
      t.integer :quantidade

      t.timestamps null: false
    end
    create_table :carro_enterros do |t|
      t.boolean :enabled
      t.integer :quantidade

      t.timestamps null: false
    end
    create_table :taxa_sepultamento do |t|
      t.boolean :enabled

      t.timestamps null: false
    end
    create_table :essa_paramento do |t|
      t.boolean :enabled

      t.timestamps null: false
    end
    create_table :outras do |t|
      t.boolean :enabled
      t.decimal :valor
      t.integer :signal

      t.timestamps null: false
    end
    create_table :kits do |t|
      t.references :urnas, index: true, foreign_key: true
      t.references :produtos, polymorphic: true, index: true, foreign_key: true
      t.decimal :preco

      t.timestamps null: false
    end
    create_table :items do |t|
      t.references :kits
      t.references :compras


      t.timestamps null: false
    end
  end
end
