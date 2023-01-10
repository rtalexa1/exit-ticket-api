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

group_enrollments = GroupEnrollment.create([
  { group_id: 1, student_id: 21 },
  { group_id: 1, student_id: 22 },
  { group_id: 1, student_id: 23 },
  { group_id: 1, student_id: 24 },
  { group_id: 1, student_id: 25 },
  { group_id: 1, student_id: 26 },
  { group_id: 1, student_id: 27 },
  { group_id: 1, student_id: 28 },
  { group_id: 1, student_id: 29 },
  { group_id: 1, student_id: 30 },
  { group_id: 2, student_id: 31 },
  { group_id: 2, student_id: 32 },
  { group_id: 2, student_id: 33 },
  { group_id: 2, student_id: 34 },
  { group_id: 2, student_id: 35 },
  { group_id: 3, student_id: 36 },
  { group_id: 3, student_id: 37 },
  { group_id: 3, student_id: 38 },
  { group_id: 3, student_id: 39 },
  { group_id: 3, student_id: 40 },
])

# students = Student.create([
#   { first_name: "Rúadán", last_name: "Merry" },
#   { first_name: "Tikhomir", last_name: "Phelix" },
#   { first_name: "Sargon", last_name: "Hüseyin" },
#   { first_name: "Boudicca", last_name: "Finnley" },
#   { first_name: "Miroslava", last_name: "Marie" },
#   { first_name: "Winona", last_name: "Shou" },
#   { first_name: "Hari", last_name: "Lachlann" },
#   { first_name: "Gunner", last_name: "Ulrikke" },
#   { first_name: "Midas", last_name: "Hector" },
#   { first_name: "Wulfhram", last_name: "Lidia" },
#   { first_name: "Queenie", last_name: "Nazaire" },
#   { first_name: "Asaf", last_name: "Dalal" },
#   { first_name: "Tanguy", last_name: "Eder" },
#   { first_name: "Aulikki", last_name: "Livna" },
#   { first_name: "Alaiya", last_name: "Valéria" },
#   { first_name: "Andrej", last_name: "Haneef" },
#   { first_name: "Deepak", last_name: "Baldo" },
#   { first_name: "Øydis", last_name: "Nino" },
#   { first_name: "Henrik", last_name: "Ketevan" },
#   { first_name: "Kristina", last_name: "Mirabell" },
# ])