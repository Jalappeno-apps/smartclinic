Pricing.all.destroy_all

price_1 = Pricing.create!(
  title: "section_1",
  ptype: :physical,
  price: "200 zł / 40 min"
)

p1 = Point.new(text: "t_1")
p2 = Point.new(text: "t_2")
p3 = Point.new(text: "t_3")
p4 = Point.new(text: "t_4")

price_1.points << p1 
price_1.points << p2
price_1.points << p3
price_1.points << p4

price_2 = Pricing.create!(
  title: "section_2",
  ptype: :physical,
  price: "500 zł / 2 godz"
)
price_2.points << Point.new(text: "t_1")

price_3 = Pricing.create!(
  title: "section_3",
  ptype: :physical,
  price: "75 zł / 20 min"
)
price_3.points << Point.new(text: "t_2")

price_4 = Pricing.create!(
  title: "section_4",
  ptype: :physical,
  price: "280 zł / 60 min"
)

p1 = Point.new(text: "t_1")
p2 = Point.new(text: "t_2")

price_4.points << p1
price_4.points << p2

price_5 = Pricing.create!(
  title: "section_1",
  ptype: :lab,
  price: "200 zł / 40 min"
)

p1 = Point.new(text: "t_1")
p2 = Point.new(text: "t_2")
p3 = Point.new(text: "t_3")
p4 = Point.new(text: "t_4")

price_5.points << p1 
price_5.points << p2
price_5.points << p3
price_5.points << p4

price_6 = Pricing.create!(
  title: "section_2",
  ptype: :lab,
  price: "500 zł / 2 godz"
)
price_6.points << Point.new(text: "t_1")

price_7 = Pricing.create!(
  title: "section_3",
  ptype: :lab,
  price: "75 zł / 20 min"
)

price_7.points << Point.new(text: "t_2")

price_8 = Pricing.create!(
  title: "section_4",
  ptype: :lab,
  price: "280 zł / 60 min"
)

p1 = Point.new(text: "t_1")
p2 = Point.new(text: "t_2")

price_8.points << p1
price_8.points << p2

