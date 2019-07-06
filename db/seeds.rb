# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env.development?
  User.create!(name: ENV['seeded_user_name'], email: ENV['seeded_user_email'], password: ENV['seeded_user_pass'], password_confirmation: ENV['seeded_user_pass'])

  Category.create! name: "security"
  Category.create! name: "development"

  Article.create! title: "A good title", description: "A good description", body: 'An article about an article being articley'

  Article.create! title: "Cool cool tumble and drool", description: "Something about a description", body: 'An article about an article being articley'
end
