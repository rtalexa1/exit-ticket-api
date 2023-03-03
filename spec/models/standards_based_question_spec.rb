require "rails_helper"

RSpec.describe StandardsBasedQuestion, type: :model do
  describe "validations" do
    it { should validate_presence_of(:student_expectation) }
  end
  
  describe "associations" do
    it { should have_many(:standards_based_exit_ticket_questions).with_foreign_key("sb_question_id") }
    it { should have_one_attached(:image) }
  end

  describe "::find_by_student_expectation" do
    it "returns all questions that match the given student expectation" do
      question = StandardsBasedQuestion.create(student_expectation: "51A1")
      expect(StandardsBasedQuestion.find_by_student_expectation("51A1")).to eq([question])
    end
  end

  describe "#image_url" do
    it "returns the url for the attached image" do
      sb_question = StandardsBasedQuestion.new(student_expectation: "32A")
      question_pic = Down.download("https://media.istockphoto.com/id/1349363968/photo/giraffe-riding-an-elephant-on-field-friendship-and-cooperation-concept.jpg?b=1&s=170667a&w=0&k=20&c=f5K4jUJ3fT55j7EV_wAcu3yjWHP3xPJ0gg9SPo9krEE=")
      sb_question.image.attach(io: question_pic, filename: "pic.jpg")
      sb_question.save

      expect(sb_question.image_url).to eq(Rails.application.routes.url_helpers.url_for(sb_question.image))
    end
  end
end