class UpdateProdutos < ActiveRecord::Migration
  def change
    drop_table :produtos
    drop_table :item_compras

    ##### CLASSES QUE DEVERIAM ESTAR NO MODULO DE ESTOQUE #####
    # Urnas tem no banco do estoque e são incluídos nas compras
    create_table :urnas do |t|
      t.string :nome

      t.timestamps null: false
    end

    # Revestimentos tem no banco do estoque e são incluídos nas compras
    create_table :revestimentos do |t|
      t.string :nome

      t.timestamps null: false
    end

    # Dimensões tem no banco do estoque e são incluídos nas compras
    create_table :dimensaos do |t|
      t.references :urna, index: true, foreign_key: true
      t.references :revestimento, index: true, foreign_key: true
      t.string :unidade_de_medida
      t.string :dimensoes

      t.timestamps null: false
    end

    # Enfeites tem no banco do estoque e são incluídos nas compras
    create_table :enfeites do |t|
      t.string :nome
      t.string :unidade_de_medida

      t.timestamps null: false
    end

    # Veus tem no banco do estoque e são incluídos nas compras
    create_table :veus do |t|
      t.string :nome
      t.string :unidade_de_medida

      t.timestamps null: false
    end

    # Iluminação tem no banco do estoque e são incluídos nas compras
    create_table :iluminacaos do |t|
      t.string :nome
      t.string :unidade_de_medida

      t.timestamps null: false
    end

    # Tipo sepultamento tem no banco do estoque e são incluídos nas compras
    create_table :tipo_sepultamentos do |t|
      t.string :nome

      t.timestamps null: false
    end

    # Carro carreto não tem no banco do estoque (mas está nos kits) e são incluídos nas compras
    create_table :carro_carretos do |t|
      t.boolean :enabled

      t.timestamps null: false
    end

    # Carro remoção carreto não tem no banco do estoque (mas está nos kits) e são incluídos nas compras
    create_table :carro_remocaos do |t|
      t.boolean :enabled

      t.timestamps null: false
    end

    # Carro enterro não tem no banco do estoque (mas está nos kits) e são incluídos nas compras
    create_table :carro_enterros do |t|
      t.boolean :enabled

      t.timestamps null: false
    end

    # taxa sepultamento carreto não tem no banco do estoque (mas está nos kits) e são incluídos nas compras
    create_table :taxa_sepultamentos do |t|
      t.boolean :enabled

      t.timestamps null: false
    end

    # Essa/Paramento não tem no banco do estoque (mas está nos kits) e são incluídos nas compras
    create_table :essa_paramentos do |t|
      t.boolean :enabled

      t.timestamps null: false
    end

    # Taxa velório não tem no banco do estoque (mas está nos kits) e são incluídos nas compras
    create_table :taxa_velorios do |t|
      t.boolean :enabled

      t.timestamps null: false
    end

    # Mesa de Condolencia não tem no banco do estoque (mas está nos kits) e são incluídos nas compras
    # Por algum motivo rails acha que o plural de mesa condolencia é mesa condolencia
    create_table :mesa_condolencia do |t|
      t.boolean :enabled

      t.timestamps null: false
    end

    # Outras não tem no banco do estoque (nem está nos kits) e são incluídos nas compras,
    # então não precisam de tabela propria

    # Elemento_kits representa a tabela de preços por kit
    create_table :elemento_kits do |t|
      t.references :urna, index: true, foreign_key: true
      t.references :produto, polymorphic: true, index: true
      t.decimal :preco

      t.timestamps null: false
    end

    ##### CLASSES QUE DEVERIAM ESTAR AQUI MESMO #####
    # Item_compras representa um item de uma compra
    create_table :item_compras do |t|
      t.string :nome
      t.boolean :enabled
      t.string :unidade_de_medida
      t.string :dimensoes
      t.string :tipo
      t.integer :quantidade
      t.decimal :preco
      t.boolean :sinal

      t.references :compra, index: true, foreign_key: true

      t.timestamps null: false
    end
    change_table :compras do |t|
      t.decimal :compras, :valor_total

    end
  end
end
