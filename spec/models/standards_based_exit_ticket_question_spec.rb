require "rails_helper"

RSpec.describe StandardsBasedExitTicketQuestion, type: :model do
  it "is not valid without an exit ticket ID" do
    sb_exit_ticket_question = StandardsBasedExitTicketQuestion.new(exit_ticket_id: nil)

    expect(sb_exit_ticket_question).to_not be_valid
  end

  it "is not valid without a standards-based question ID" do
    sb_exit_ticket_question = StandardsBasedExitTicketQuestion.new(sb_question_id: nil)

    expect(sb_exit_ticket_question).to_not be_valid
  end
end