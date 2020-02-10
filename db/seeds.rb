Pricing.all.destroy_all
Doctor.all.destroy_all
User.all.destroy_all

User.create!(email: 'test@test.com', password: 'test123')
#physical
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


#lab
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



#sexual
price_4 = Pricing.create!(
  title: "section_4",
  ptype: :sexual,
  price: "280 zł / 60 min"
)

p1 = Point.new(text: "t_1")
p2 = Point.new(text: "t_2")

price_4.points << p1
price_4.points << p2

price_5 = Pricing.create!(
  title: "section_1",
  ptype: :sexual,
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
  ptype: :sexual,
  price: "500 zł / 2 godz"
)
price_6.points << Point.new(text: "t_1")

price_7 = Pricing.create!(
  title: "section_3",
  ptype: :sexual,
  price: "75 zł / 20 min"
)
price_7.points << Point.new(text: "t_2")

price_8 = Pricing.create!(
  title: "section_4",
  ptype: :sexual,
  price: "280 zł / 60 min"
)

p1 = Point.new(text: "t_1")
p2 = Point.new(text: "t_2")

price_8.points << p1
price_8.points << p2


#mental
price_4 = Pricing.create!(
  title: "section_4",
  ptype: :mental,
  price: "280 zł / 60 min"
)

p1 = Point.new(text: "t_1")
p2 = Point.new(text: "t_2")

price_4.points << p1
price_4.points << p2

price_5 = Pricing.create!(
  title: "section_1",
  ptype: :mental,
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
  ptype: :mental,
  price: "500 zł / 2 godz"
)
price_6.points << Point.new(text: "t_1")

price_7 = Pricing.create!(
  title: "section_3",
  ptype: :mental,
  price: "75 zł / 20 min"
)
price_7.points << Point.new(text: "t_2")

price_8 = Pricing.create!(
  title: "section_4",
  ptype: :mental,
  price: "280 zł / 60 min"
)

p1 = Point.new(text: "t_1")
p2 = Point.new(text: "t_2")

price_8.points << p1
price_8.points << p2

# doctor
d1 = Doctor.create!(
  name: "Dr n. med. Joanna Kubicka",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper elementum volutpat neque dignissim pulvinar amet. Aliquet semper facilisi leo faucibus mauris faucibus. Sem eleifend nunc sit eros, dapibus."
) 

d2 = Doctor.create!(
  name: "Dr n. med. Radosław Krąpiec",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper elementum volutpat neque dignissim pulvinar amet. Aliquet semper facilisi leo faucibus mauris faucibus. Sem eleifend nunc sit eros, dapibus."
)

d3 = Doctor.create!(
  name: "Doctor 3",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper elementum volutpat neque dignissim pulvinar amet. Aliquet semper facilisi leo faucibus mauris faucibus. Sem eleifend nunc sit eros, dapibus."
)

d4 = Doctor.create!(
  name: "Doctor 4",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper elementum volutpat neque dignissim pulvinar amet. Aliquet semper facilisi leo faucibus mauris faucibus. Sem eleifend nunc sit eros, dapibus."
)

d5 = Doctor.create!(
  name: "Doctor 5",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper elementum volutpat neque dignissim pulvinar amet. Aliquet semper facilisi leo faucibus mauris faucibus. Sem eleifend nunc sit eros, dapibus."
)

d6 = Doctor.create!(
  name: "Doctor 6",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper elementum volutpat neque dignissim pulvinar amet. Aliquet semper facilisi leo faucibus mauris faucibus. Sem eleifend nunc sit eros, dapibus."
)

d7 = Doctor.create!(
  name: "Doctor 7",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper elementum volutpat neque dignissim pulvinar amet. Aliquet semper facilisi leo faucibus mauris faucibus. Sem eleifend nunc sit eros, dapibus."
)

s1 = Specialization.new(name: :sexual)
s2 = Specialization.new(name: :mental)
s3 = Specialization.new(name: :sexual)
s4 = Specialization.new(name: :sexual)
s5 = Specialization.new(name: :sexual)
s6 = Specialization.new(name: :sexual)
s7 = Specialization.new(name: :physical) 

d1.specializations << s1
d2.specializations << s2
d3.specializations << s3
d4.specializations << s4
d5.specializations << s5
d6.specializations << s6
d7.specializations << s7
