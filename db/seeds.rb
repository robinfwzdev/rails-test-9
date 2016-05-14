Brand.destroy_all

new_balance = Brand.create!(name: 'New Balance')
nike        = Brand.create!(name: 'Nike')
adidas      = Brand.create!(name: 'Adidas')
puma        = Brand.create!(name: 'Puma')
fila        = Brand.create!(name: 'Fila')
asics       = Brand.create!(name: 'ASICS')

Shoe.destroy_all

img_shoe_1  = "#{Rails.root}/app/assets/images/shoes/shoe-1.png"
img_shoe_2  = "#{Rails.root}/app/assets/images/shoes/shoe-2.png"
img_shoe_3  = "#{Rails.root}/app/assets/images/shoes/shoe-3.png"
img_shoe_4  = "#{Rails.root}/app/assets/images/shoes/shoe-4.png"
img_shoe_5  = "#{Rails.root}/app/assets/images/shoes/shoe-5.png"
img_shoe_6  = "#{Rails.root}/app/assets/images/shoes/shoe-6.png"
img_shoe_7  = "#{Rails.root}/app/assets/images/shoes/shoe-7.png"
img_shoe_8  = "#{Rails.root}/app/assets/images/shoes/shoe-8.png"
img_shoe_9  = "#{Rails.root}/app/assets/images/shoes/shoe-9.png"
img_shoe_10 = "#{Rails.root}/app/assets/images/shoes/shoe-10.png"
img_shoe_11 = "#{Rails.root}/app/assets/images/shoes/shoe-11.png"
img_shoe_12 = "#{Rails.root}/app/assets/images/shoes/shoe-12.png"

Shoe.create!(sku: "MX608V4", name: "New Balance Men's MX608V4 Training Shoe", price: 74.99, brand: new_balance, picture: File.open(img_shoe_1))
Shoe.create!(sku: "MX608V4", name: "Nike Free 4.0 Flyknit Sz 13 Mens Running Shoes", price: 125.00, brand: new_balance, picture: File.open(img_shoe_1))
Shoe.create!(sku: "MX608V4", name: "Adidas Performance Men's Galactic Elite M Running Shoe", price: 62.99, brand: new_balance, picture: File.open(img_shoe_1))
Shoe.create!(sku: "MX608V4", name: "Nike Free 5.0 Tr Fit 5 Synthetic Running Shoe", price: 103.99, brand: new_balance, picture: File.open(img_shoe_1))
Shoe.create!(sku: "MX608V4", name: "PUMA Men's Tazon 6 Cross-Training Shoe", price: 99.99, brand: new_balance, picture: File.open(img_shoe_1))
Shoe.create!(sku: "MX608V4", name: "Nike Free 5.0 Tr Fit 5 Print Sz 12 Womens Cross Training Shoes", price: 74.99, brand: new_balance, picture: File.open(img_shoe_1))