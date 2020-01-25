# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pricing.all.destroy_all

Pricing.create!(
  title: "Konsultacja lekarska",
  ptype: :physical,
  price: "200 zł / 40 min"
)

p1 = Point.new(text: "Profilaktyka zdrowotna")
p2 = Point.new(text: "Szacowanie ryzyka chorób cywilizacyjnych: układu sercowo  – naczyniowego, chorób nowotworowych w oparciu o wywiad lekarski i rodzinny, badanie lekarskie i badanie dodatkowe")
p3 = Point.new(text: "Przygotowanie zindywidualizowanego programu zdrowotnego")
p4 = Point.new(text: "Szczepienia, dieta, suplementacja")

price_1 = Pricing.first
price_1.points << p1 
price_1.points << p2
price_1.points << p3
price_1.points << p4

Pricing.create!(
  title: "Rewitalizacja, detoksykacja dożylna",
  ptype: :physical,
  price: "500 zł / 2 godz"
)

Pricing.second.points << Point.new(text: "W oparciu o pakiet badań podstawowych, badanie lekarskie i czynnik wyczerpujący organizm (przemęczenie, alkohol, dieta restrykcyjna) podajemy mieszankę płynów, elektrolitów  i witamin – dożylnie, doustnie i domięśniowo  w zależności od zapotrzebowania i stanu pacjenta.")

Pricing.create!(
  title: "Szczepienia",
  ptype: :physical,
  price: "75 zł / 20 min"
)

Pricing.third.points << Point.new(text: "Kwalifikacja do szczepień oraz ich podanie. Plan szczepień ustalany według potrzeb. Możliwość zamówienia szczepionek według potrzeb.")

Pricing.create!(
  title: "Ocena zaburzeń psychosomatycznych",
  ptype: :physical,
  price: "280 zł / 60 min"
)

p1 = Point.new(text: "Ocena lekarza i psychologa (dwie wizyty po 30 minut)")
p2 = Point.new(text: "Zaplanowanie diagnostyki i leczenia – fizycznego  i psychologicznego")

Pricing.last.points << p1
Pricing.last.points << p2
