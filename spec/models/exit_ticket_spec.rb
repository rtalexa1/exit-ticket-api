require "rails_helper"

RSpec.describe ExitTicket, type: :model do
  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:grade_level) }
    it { should validate_presence_of(:subject_area) }
  end

  describe "associations" do
    it { should belong_to(:user) }
    it { should have_many(:reflection_exit_ticket_questions) }
    it { should have_many(:reflection_questions) }
    it { should have_many(:standards_based_exit_ticket_questions) }
    it { should have_many(:standards_based_questions) }
  end

  describe "#questions" do
    it "returns an array of all standards based and reflection questions assigned to a ticket" do
      user = User.create!(email: "email.com")
      sb_question = StandardsBasedQuestion.create!(student_expectation: "32A")
      ref_question = ReflectionQuestion.create!(text: "Hey hey")
      ticket = ExitTicket.create!(
        user_id: user.id, title: "Test", grade_level: "third-grade", subject_area: "math")
      sb_exit_ticket_question = StandardsBasedExitTicketQuestion.create!(
        exit_ticket_id: ticket.id, sb_question_id: sb_question.id, order: 1)
      ref_exit_ticket_question = ReflectionExitTicketQuestion.create!(
        exit_ticket_id: ticket.id, ref_question_id: ref_question.id, order: 2)

      expect(ticket.questions).to eq([sb_exit_ticket_question, ref_exit_ticket_question])
    end
  end
  # describe "#display_questions" do
  #   it "returns an array of all questions formatted with relevant data for the front end" do
  #     user = User.create!(email: "email.com")
  #     sb_question = StandardsBasedQuestion.create!(student_expectation: "32A")
  #     question_pic = Down.download("https://media.istockphoto.com/id/1349363968/photo/giraffe-riding-an-elephant-on-field-friendship-and-cooperation-concept.jpg?b=1&s=170667a&w=0&k=20&c=f5K4jUJ3fT55j7EV_wAcu3yjWHP3xPJ0gg9SPo9krEE=")
  #     sb_question.image.attach(io: question_pic, filename: "pic.jpg")
  #     sb_question.save
  #     url = sb_question.image_url
  #     ref_question = ReflectionQuestion.create!(text: "Hey hey")
  #     ticket = ExitTicket.create!(
  #       user_id: user.id, title: "Test", grade_level: "third-grade", subject_area: "math")
  #     sb_exit_ticket_question = StandardsBasedExitTicketQuestion.create!(
  #       exit_ticket_id: ticket.id, sb_question_id: sb_question.id, order: 1)
  #     ref_exit_ticket_question = ReflectionExitTicketQuestion.create!(
  #       exit_ticket_id: ticket.id, ref_question_id: ref_question.id, order: 2)

  #     expect(ticket.display_questions).to eq([{type: "sb_question", order: 1, image_url: url}, {type: "ref_question", order: 2, text: "Hey hey"}])
  #   end
  # end
end