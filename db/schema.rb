# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150611145550) do

  create_table "cadastros", force: :cascade do |t|
    t.integer  "tipo_operacao"
    t.integer  "tipo_contratacao"
    t.integer  "destino_final"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "produto_id"
    t.string   "status"
  end

  add_index "cadastros", ["produto_id"], name: "index_cadastros_on_produto_id"

  create_table "carro_carretos", force: :cascade do |t|
    t.boolean  "enabled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carro_enterros", force: :cascade do |t|
    t.boolean  "enabled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carro_remocaos", force: :cascade do |t|
    t.boolean  "enabled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "casamentos", force: :cascade do |t|
    t.string   "nome"
    t.datetime "data_casamento"
    t.string   "cartorio"
    t.string   "cidade"
    t.string   "uf"
    t.integer  "livro"
    t.integer  "folha"
    t.integer  "numero"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "falecido_id"
  end

  add_index "casamentos", ["falecido_id"], name: "index_casamentos_on_falecido_id"

  create_table "certidao_nascimentos", force: :cascade do |t|
    t.datetime "data_nascimento"
    t.string   "cartorio"
    t.string   "cidade"
    t.string   "uf"
    t.integer  "livro"
    t.integer  "folha"
    t.integer  "numero"
    t.boolean  "obito"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "compras", force: :cascade do |t|
    t.boolean  "remocao_local_falecimento"
    t.string   "local_remocao"
    t.string   "endereco_remocao"
    t.string   "observacoes"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "cadastro_id"
    t.decimal  "valor_total"
  end

  add_index "compras", ["cadastro_id"], name: "index_compras_on_cadastro_id"

  create_table "contratantes", force: :cascade do |t|
    t.text     "nome_completo"
    t.string   "cpf"
    t.string   "rg"
    t.string   "profissao"
    t.string   "parentesco"
    t.string   "telefone_residencial"
    t.string   "telefone_celular"
    t.string   "email"
    t.string   "nome_mae"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "cadastro_id"
  end

  add_index "contratantes", ["cadastro_id"], name: "index_contratantes_on_cadastro_id"

  create_table "dados_obitos", force: :cascade do |t|
    t.string   "local_falecimento"
    t.datetime "data_falecimento"
    t.string   "cartorio"
    t.string   "proaim"
    t.string   "cemiterio"
    t.string   "endereco"
    t.datetime "data_sepultamento"
    t.string   "medico"
    t.string   "crm"
    t.text     "observacoes"
    t.string   "causa_mortis"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.text     "hora_falecimento"
    t.text     "hora_sepultamento"
    t.integer  "cadastro_id"
  end

  add_index "dados_obitos", ["cadastro_id"], name: "index_dados_obitos_on_cadastro_id"

  create_table "dados_velorios", force: :cascade do |t|
    t.string   "local_velorio"
    t.text     "endereco_velorio"
    t.datetime "data_saida"
    t.text     "hora_saida"
    t.string   "crematorio"
    t.text     "endereco_crematorio"
    t.datetime "data_cremacao"
    t.text     "hora_cremacao"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "dados_obito_id"
  end

  add_index "dados_velorios", ["dados_obito_id"], name: "index_dados_velorios_on_dados_obito_id"

  create_table "dimensaos", force: :cascade do |t|
    t.integer  "urna_id"
    t.integer  "revestimento_id"
    t.string   "unidade_de_medida"
    t.string   "dimensoes"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "dimensaos", ["revestimento_id"], name: "index_dimensaos_on_revestimento_id"
  add_index "dimensaos", ["urna_id"], name: "index_dimensaos_on_urna_id"

  create_table "elemento_kits", force: :cascade do |t|
    t.integer  "urna_id"
    t.integer  "produto_id"
    t.string   "produto_type"
    t.decimal  "preco"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "elemento_kits", ["produto_type", "produto_id"], name: "index_elemento_kits_on_produto_type_and_produto_id"
  add_index "elemento_kits", ["urna_id"], name: "index_elemento_kits_on_urna_id"

  create_table "empresas", force: :cascade do |t|
    t.string   "nome"
    t.string   "cnpj"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "contratante_id"
  end

  add_index "empresas", ["contratante_id"], name: "index_empresas_on_contratante_id"

  create_table "enfeites", force: :cascade do |t|
    t.string   "nome"
    t.string   "unidade_de_medida"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "essa_paramentos", force: :cascade do |t|
    t.boolean  "enabled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "falecidos", force: :cascade do |t|
    t.string   "nome"
    t.string   "sexo"
    t.string   "cor"
    t.string   "naturalidade"
    t.datetime "nascimento"
    t.string   "profissao"
    t.string   "documento"
    t.string   "numero_documento"
    t.string   "cpf"
    t.string   "estado_civil"
    t.boolean  "marca_passo"
    t.boolean  "eleitor"
    t.boolean  "reservista"
    t.boolean  "inss"
    t.boolean  "inventariar"
    t.boolean  "testamento"
    t.text     "beneficio"
    t.string   "nome_mae"
    t.string   "naturalidade_mae"
    t.string   "estado_civil_mae"
    t.integer  "idade_mae"
    t.string   "profissao_mae"
    t.string   "nome_pai"
    t.string   "naturalidade_pai"
    t.string   "estado_civil_pai"
    t.string   "profissao_pai"
    t.integer  "idade_pai"
    t.boolean  "deixa_filhos"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "altura"
    t.decimal  "peso"
    t.integer  "cadastro_id"
  end

  add_index "falecidos", ["cadastro_id"], name: "index_falecidos_on_cadastro_id"

  create_table "filhos", force: :cascade do |t|
    t.string   "nome"
    t.string   "categoria_idade"
    t.text     "observacoes"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "falecido_id"
  end

  add_index "filhos", ["falecido_id"], name: "index_filhos_on_falecido_id"

  create_table "iluminacaos", force: :cascade do |t|
    t.string   "nome"
    t.string   "unidade_de_medida"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "item_compras", force: :cascade do |t|
    t.string   "nome"
    t.boolean  "enabled"
    t.string   "unidade_de_medida"
    t.string   "dimensoes"
    t.string   "tipo"
    t.integer  "quantidade"
    t.decimal  "preco"
    t.boolean  "sinal"
    t.integer  "compra_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "item_compras", ["compra_id"], name: "index_item_compras_on_compra_id"

  create_table "localizacaos", force: :cascade do |t|
    t.text     "endereco"
    t.string   "bairro"
    t.integer  "numero"
    t.string   "cidade"
    t.string   "complemento"
    t.string   "cep"
    t.string   "estado"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "falecido_id"
    t.integer  "contratante_id"
  end

  add_index "localizacaos", ["contratante_id"], name: "index_localizacaos_on_contratante_id"
  add_index "localizacaos", ["falecido_id"], name: "index_localizacaos_on_falecido_id"

  create_table "mesa_condolencia", force: :cascade do |t|
    t.boolean  "enabled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nascimento_obitos", force: :cascade do |t|
    t.string   "local_nascimento"
    t.datetime "data_nascimento"
    t.string   "avo_paterno"
    t.string   "avo_materno"
    t.string   "avo_paterna"
    t.string   "avo_materna"
    t.integer  "semanas_gestacao"
    t.string   "gravidez"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "falecido_id"
    t.string   "hora_nascimento"
  end

  add_index "nascimento_obitos", ["falecido_id"], name: "index_nascimento_obitos_on_falecido_id"

  create_table "revestimentos", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taxa_sepultamentos", force: :cascade do |t|
    t.boolean  "enabled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taxa_velorios", force: :cascade do |t|
    t.boolean  "enabled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testemunhas", force: :cascade do |t|
    t.string   "nome"
    t.string   "estado_civil"
    t.string   "nacionalidade"
    t.string   "profissao"
    t.string   "endereco"
    t.string   "bairro"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "nascimento_obito_id"
  end

  add_index "testemunhas", ["nascimento_obito_id"], name: "index_testemunhas_on_nascimento_obito_id"

  create_table "tipo_sepultamentos", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "urnas", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "nome"
    t.string   "senha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "veus", force: :cascade do |t|
    t.string   "nome"
    t.string   "unidade_de_medida"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
