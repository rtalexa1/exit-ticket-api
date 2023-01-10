# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# teachers = User.create([
#   { email: "f_ejike@gmail.com", first_name: "Francisca", last_name: "Ejike" },
#   { email: "d_shekhar@gmail.com", first_name: "Diodotos", last_name: "Shekhar" },
#   { email: "a_fawziyya@gmail.com", first_name: "Aïcha", last_name: "Fawziyya" } 
#   ])

# groups = Group.create([
#   { name: "Roadrunners", user_id: 1 },
#   { name: "Serpents", user_id: 2 },
#   { name: "Jaguars", user_id: 3 }
# ])

students = Student.create([
  { first_name: "Rúadán", last_name: "Merry", group_id: 1 },
  { first_name: "Tikhomir", last_name: "Phelix", group_id: 1 },
  { first_name: "Sargon", last_name: "Hüseyin", group_id: 1 },
  { first_name: "Boudicca", last_name: "Finnley", group_id: 1 },
  { first_name: "Miroslava", last_name: "Marie", group_id: 1 },
  { first_name: "Winona", last_name: "Shou", group_id: 1 },
  { first_name: "Hari", last_name: "Lachlann", group_id: 1 },
  { first_name: "Gunner", last_name: "Ulrikke", group_id: 1 },
  { first_name: "Midas", last_name: "Hector", group_id: 1 },
  { first_name: "Wulfhram", last_name: "Lidia", group_id: 1 },
  { first_name: "Queenie", last_name: "Nazaire", group_id: 2 },
  { first_name: "Asaf", last_name: "Dalal", group_id: 2 },
  { first_name: "Tanguy", last_name: "Eder", group_id: 2 },
  { first_name: "Aulikki", last_name: "Livna", group_id: 2 },
  { first_name: "Alaiya", last_name: "Valéria", group_id: 2 },
  { first_name: "Andrej", last_name: "Haneef", group_id: 3 },
  { first_name: "Deepak", last_name: "Baldo", group_id: 3 },
  { first_name: "Øydis", last_name: "Nino", group_id: 3 },
  { first_name: "Henrik", last_name: "Ketevan", group_id: 3 },
  { first_name: "Kristina", last_name: "Mirabelle", group_id: 3 },
])