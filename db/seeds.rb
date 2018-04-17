# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
clothing = Category.create(name:"clothing")
max = User.create(name: "Max", age: 30)
Project.create(title: "Suspenders",category_id: clothing.id, funding_goal: 500.00, startdate:"April 16, 2018", enddate:"April 18, 2018", beneficiary_id: max.id)
