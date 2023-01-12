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

ReflectionQuestion.create([
  { text: "How do you feel about what you learned today?" },
  { text: "Was there anything that clicked for you today?" },
  { text: "Is there anything that is still fuzzy for you?" },
  { text: "Do you think you could teach this topic to someone else?" },
  { text: "How confident are you about your understanding of today's topic?" }
])