# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


Supplier.create!([
  {name: 'Top Line', address: Faker::Address.street_address, contact: "Ivan Dśouza", phone: Faker::PhoneNumber.phone_number, email: Faker::Internet.email},
 {name: 'Mangharams', address: Faker::Address.street_address, contact: "Dinesh Mangharams", phone: Faker::PhoneNumber.phone_number, email: Faker::Internet.email},
 {name: 'Shaoxing', address: Faker::Address.street_address, contact: "Cathy Shao", phone: Faker::PhoneNumber.phone_number, email: Faker::Internet.email}])#

3.times do |i|
  SupplierAccount.create!([{
    supplier_id: "#{i+1}",
    bank: Faker::Bank.name,
    address: Faker::Address.street_address,
    account: Faker::Bank.iban,
    swift: Faker::Bank.swift_bic}])
end

Handler.create!([{supplier_id: 1, name:'Fion', email: 'fion@gmail.com'},
{supplier_id: 2, name:'Nao', email: 'nao@gmail.com'}, {supplier_id: 3, name:'Fion', email: 'fion@gmail.com'}])#

10.times do
  Client.create!([{
    address: Faker::Address.street_address,
    country: "Chile",
    phone: Faker::PhoneNumber.phone_number}])
end

4.times do
  Seller.create!([{
    name: Faker::Name.name,
    email: Faker::Internet.email,
    country: "Chile",
    phone: Faker::PhoneNumber.phone_number},
    ])
end

3.times do |i|
  SellerAccount.create!([{
    seller_id: "#{i+1}",
    bank: Faker::Bank.name,
    address: Faker::Address.street_address,
    account: Faker::Bank.iban,
    swift: Faker::Bank.swift_bic}])
end

Size.create!([{name: "S"}, {name: "M"}, {name: "L"}, {name: "XL"}, {name: "S -M -L-XL"},
  {name: "16"}, {name: "16,5"},{name: "17"}, {name: "17,5"}, {name: "18"}, {name: "16, 16.5, 17, 17.5, 18"},
  {name: "42"}, {name: "44"}, {name: "46"}, {name: "48"}, {name: "50"}, {name: "42, 44, 46, 48, 50"},
  {name: "One Sze"}])

15.times do
  Color.create!([{name: Faker::Color.color_name}])
end

Category.create!([{name: "Pants"}, {name: "Shirts"}, {name: "Underwear"}, {name: "Accessories"},
            {name: "Shorts"}, {name: "Jeans"}])

Port.create!([{name: "Shanghai", country: "China"}, {name: "Ningbo", country: "China"},
  {name: "Haiphong", country: "Vietnam"}, {name: "Chittagong", country: "Bagladesh"}])

Season.create!([{name: "Winter 2017", closed: true}, {name: "Summer 2017-2018", closed: true}, {name: "Winter 2018", closed: true}, {name: "Summer 2018-2019", closed: true}])

PaymentTerm.create!([{clause: "FOB", conditions: "30% advance 70% against copy of OBL"},
  {clause: "FOB", conditions: "10% advance 90% against copy of OBL"}])

10.times do
  Brand.create!([{name: Faker::GameOfThrones.city}])
end
