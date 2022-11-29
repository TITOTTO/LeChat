# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Article.destroy_all
User.destroy_all 

10.times do
    User.create!(name: Faker::JapaneseMedia::DragonBall.character, email: Faker::Internet.email, description: Faker::Games::WarhammerFantasy.quote, password: Faker::Internet.password(min_length: 8))
end

10.times do 
    Article.create!(title: Faker::Creature::Cat.name, description: Faker::Creature::Cat.breed, price: Faker::Number.decimal(l_digits: 3, r_digits: 3), user_id: User.all.sample.id)
end