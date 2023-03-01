require "rails_helper"

RSpec.describe ExitTicket, type: :model do
  it "is not valid without a title" do
    exit_ticket = ExitTicket.new(title: nil)

    expect(exit_ticket).to_not be_valid
  end

  it "is not valid without a grade level" do
    exit_ticket = ExitTicket.new(grade_level: nil)

    expect(exit_ticket).to_not be_valid
  end

  it "is not valid without a subject area" do
    exit_ticket = ExitTicket.new(subject_area: nil)

    expect(exit_ticket).to_not be_valid
  end
end