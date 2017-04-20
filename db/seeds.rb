# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all

User.create!(email: 'low.eugene1@gmail.com', password: 'password', first_name: 'eugene', last_name: 'low')

User.create!(email: 'test1@gmail.com', password: 'test123', first_name: 'test1', last_name: 'test1')

User.create!(email: 'test2@gmail.com', password: 'test234', first_name: 'test2', last_name: 'test2')

User.create!(email: 'test3@gmail.com', password: 'test345', first_name: 'test3', last_name: 'test3')

User.create!(email: 'Guest', password: 'Password', first_name: 'Best', last_name: 'Guest')
