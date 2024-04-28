# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
5.times do
    User.create(
      name: Faker::Name.name,
      age: rand(18..60),
      email: Faker::Internet.email
    )
  end
  
  5.times do
    Post.create(
      title: Faker::Lorem.sentence,
      content: Faker::Lorem.paragraphs.join("\n\n"),
      published_at: Faker::Time.between(from: 1.year.ago, to: Time.now)
    )
  end
  