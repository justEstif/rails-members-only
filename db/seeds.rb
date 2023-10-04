# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

5.times do |i|
  User.create!(
    name: "User #{i + 1}",
    email: "user#{i + 1}@example.com",
    password: 'password'
  )
end

# Create some sample posts associated with users
User.all.each do |user|
  3.times do |i|
    user.posts.create!(
      title: "Post #{i + 1} by #{user.name}",
      body: "This is the body of Post #{i + 1} by #{user.name}"
    )
  end
end
