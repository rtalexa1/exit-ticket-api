# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# users = User.create([
#   { email: "f_ejike@gmail.com", first_name: "Francisca", last_name: "Ejike" },
#   { email: "d_shekhar@gmail.com", first_name: "Diodotos", last_name: "Shekhar" },
#   { email: "a_fawziyya@gmail.com", first_name: "Aïcha", last_name: "Fawziyya" } 
#   ])

# sb_question = StandardsBasedQuestion.new(student_expectation: "32A")
# question_pic = Down.download("https://staar-questions.s3.us-east-2.amazonaws.com/third-grade/math/32A1.jpg")
# sb_question.image.attach(io: question_pic, filename: "32A1.jpg")
# sb_question.save

# Find a way to retrieve all the pictures that I've added to the bucket and get them into Rails
# For each, create a new record and attach the image

require 'csv'

question_extensions = []

CSV.foreach(Rails.root.join("lib/staar-questions-third-grade-only.csv"), headers: true, col_sep: ",") do |row|
  question_extensions << row[1] if row[1].include?(".jpg")
end

question_extensions.each do |question_extension|
  student_expectation = question_extension.gsub("third-grade/math/", "").gsub(".jpg", "")
  sb_question = StandardsBasedQuestion.new(student_expectation: student_expectation)
  question_pic = Down.download("https://staar-questions.s3.us-east-2.amazonaws.com/third-grade/math/#{student_expectation}.jpg")
  sb_question.image.attach(io: question_pic, filename: "#{student_expectation}.jpg")
  sb_question.save
end