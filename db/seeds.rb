# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

REGISTERED_USER_METRICS = 7

REGISTERED_USER_METRICS.times do |i|
  i+=1
  registered_user = RegisteredUser.new
  registered_user.attributes = {
      date: Faker::Date.forward(i),
      number: Faker::Number.number(i)
  }

  registered_user.save!(validate: false)
end
