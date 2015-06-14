# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

urnas = Urna.create([{nome: "Urna Fixa", dimensaos: []},{nome: "Bromélia", dimensaos: []}])
revestimentos = Revestimento.create([{nome: "Revestimento Fixo", dimensaos: []},{nome: "Mármore", dimensaos: []}])

# dimensoes
dimensoes = ["2,00x0,60x0,40", "1,90x0,60x0,40"]
urna = urnas.first
urna.dimensaos.append(Dimensao.new({dimensoes: dimensoes.first, unidade_de_medida: 'm'}))
urna.dimensaos.append(Dimensao.new({dimensoes: dimensoes.last, unidade_de_medida: 'm'}))
urna.save
urna = urnas.last
urna.dimensaos.append(Dimensao.new({dimensoes: dimensoes.first, unidade_de_medida: 'm'}))
urna.dimensaos.append(Dimensao.new({dimensoes: dimensoes.last, unidade_de_medida: 'm'}))
urna.save

revestimento = revestimentos.first
revestimento.dimensaos.append(Dimensao.new({dimensoes: dimensoes.first, unidade_de_medida: 'm'}))
revestimento.dimensaos.append(Dimensao.new({dimensoes: dimensoes.last, unidade_de_medida: 'm'}))
revestimento.save
revestimento = revestimentos.last
revestimento.dimensaos.append(Dimensao.new({dimensoes: dimensoes.first, unidade_de_medida: 'm'}))
revestimento.dimensaos.append(Dimensao.new({dimensoes: dimensoes.last, unidade_de_medida: 'm'}))
revestimento.save

enfeites = Enfeite.create([{nome: "Véu", unidade_de_medida: "pacote"},{nome: "Flores", unidade_de_medida: "Pacote"}])
veus = Veu.create([{nome: "Rendado", unidade_de_medida: "Unidade"}, {nome: "Liso", unidade_de_medida: "Unidade"}])
iluminacaos = Iluminacao.create([{nome: "Velas", unidade_de_medida: "Pacote"}, {nome: "Fluorescente", unidade_de_medida: "Lâmpada"}])
tipo_sepultamento = TipoSepultamento.create({nome: "Qd. Geral Terra s/ Gaveta"})
carro_carreto = CarroCarreto.create({enabled: true})
carro_remocao = CarroRemocao.create({enabled: true})
carro_enterro = CarroEnterro.create({enabled: true})
taxa_sepultamento = TaxaSepultamento.create({enabled: true})    # taxa sepultamento carreto não tem no banco do estoque (mas está nos kits) e são incluídos nas compras
essa_paramento = EssaParamento.create({enabled: true})
taxa_velorio = TaxaVelorio.create({enabled: true})
mesa_condolencia = MesaCondolencia.create({enabled: true})

def add_produto urna, produto, preco
  elemento_kit = ElementoKit.new({preco: preco})
  elemento_kit.urna = urna
  elemento_kit.produto = produto
end

# Kit Urna Fixa
urna = urnas.first
add_produto urna, revestimentos.first, 1.99
add_produto urna, revestimentos.last, 2.99
add_produto urna, enfeites.first, 3.99
add_produto urna, enfeites.last, 4.99
add_produto urna, veus.first, 5.99
add_produto urna, veus.last, 6.99
add_produto urna, iluminacaos.first, 7.99
add_produto urna, iluminacaos.last, 8.99
add_produto urna, tipo_sepultamento, 9.99
add_produto urna, carro_carreto, 10.99
add_produto urna, carro_remocao, 10.99
add_produto urna, carro_enterro, 10.99
add_produto urna, taxa_sepultamento, 10.99
add_produto urna, essa_paramento, 10.99
add_produto urna, taxa_velorio, 10.99
add_produto urna, mesa_condolencia, 10.99

# Kit Bromélia
urna = urnas.second
add_produto urna, revestimentos.first, 1.99
add_produto urna, revestimentos.last, 2.99
add_produto urna, enfeites.first, 3.99
add_produto urna, enfeites.last, 4.99
add_produto urna, veus.first, 5.99
add_produto urna, veus.last, 6.99
add_produto urna, iluminacaos.first, 7.99
add_produto urna, iluminacaos.last, 8.99
add_produto urna, tipo_sepultamento, 9.99
add_produto urna, carro_carreto, 10.99
add_produto urna, carro_remocao, 10.99
add_produto urna, carro_enterro, 10.99
add_produto urna, taxa_sepultamento, 10.99
add_produto urna, essa_paramento, 10.99
add_produto urna, taxa_velorio, 10.99
add_produto urna, mesa_condolencia, 10.99