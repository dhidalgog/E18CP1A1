# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
User.destroy_all
Role.destroy_all



r1 = Role.create({name: "Seller", description: "Can read and create items. Can update and destroy own items"})
r2 = Role.create({name: "Admin", description: "Can perform any CRUD operation on any resource"})

u1 = User.create({name: "Daniel", email: "daniel@gmail.com", password: "12345678", password_confirmation: "12345678", role_id: r1.id})
u2 = User.create({name: "Sue", email: "sue@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r1.id})
u3 = User.create({name: "Kev", email: "kev@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r1.id})
u4 = User.create({name: "Jack", email: "jack@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})

p1 = Product.create({name: "Rayban Sunglasses", description: "Stylish shades", state: false, price: 99.99, user_id: u1.id})
p2 = Product.create({name: "Gucci watch", description: "Expensive timepiece", state: false, price: 199.99, user_id: u1.id})
p3 = Product.create({name: "Henri Lloyd Pullover", description: "Classy knitwear", state: false, price: 299.99, user_id: u1.id})
p4 = Product.create({name: "Porsche socks", description: "Cosy footwear", state: false, price: 399.99, user_id: u1.id})

p5 = Product.create({name: "Rayban Sunglasses", description: "Stylish shades", state: false, price: 99.99, user_id: u2.id})
p6 = Product.create({name: "Gucci watch", description: "Expensive timepiece", state: false, price: 199.99, user_id: u2.id})
p7 = Product.create({name: "Henri Lloyd Pullover", description: "Classy knitwear", state: false, price: 299.99, user_id: u2.id})
p8 = Product.create({name: "Porsche socks", description: "Cosy footwear", state: false, price: 399.99, user_id: u2.id})
