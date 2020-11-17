# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating 10 fake articles...'
10.times do
  article = Article.new(
    titre:    Faker::Artist.name,
    content:  Faker::ChuckNorris.fact
  )
  article.save!
end
puts 'Finished!'
