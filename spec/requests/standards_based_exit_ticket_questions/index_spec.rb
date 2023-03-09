require "rails_helper"

describe "GET /standards_based_exit_ticket_questions" do
  it "renders all standards based exit ticket questions" do
    user = User.create!(email: "test@test.com")
    ticket = ExitTicket.create!(title: "Title", grade_level: "third-grade", subject_area: "math", user_id: user.id)
    sb_question = StandardsBasedQuestion.create!(student_expectation: "51A1")
    sb_exit_ticket_question = StandardsBasedExitTicketQuestion.create!(exit_ticket_id: ticket.id, sb_question_id: sb_question.id, order: 1)

    get "/standards_based_exit_ticket_questions"
    expect(response.status).to eq(200)

    json = JSON.parse(response.body)
    expect(json[0]["exit_ticket_id"]).to eq(ticket.id)
    expect(json[0]["sb_question_id"]).to eq(sb_question.id)
    expect(json[0]["order"]).to eq(1)
  end
end