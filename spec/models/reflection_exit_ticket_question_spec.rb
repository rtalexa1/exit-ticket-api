require "rails_helper"

RSpec.describe ReflectionExitTicketQuestion, type: :model do
   it "is not valid without an exit ticket ID" do
    ref_exit_ticket_question = ReflectionExitTicketQuestion.new(exit_ticket_id: nil)

    expect(ref_exit_ticket_question).to_not be_valid
  end

  it "is not valid without a reflection question ID" do
    ref_exit_ticket_question = ReflectionExitTicketQuestion.new(ref_question_id: nil)

    expect(ref_exit_ticket_question).to_not be_valid
  end
end