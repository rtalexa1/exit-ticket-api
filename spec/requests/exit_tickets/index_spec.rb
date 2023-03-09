require "rails_helper"

describe "GET /users/:user_id/exit_tickets" do
  it "renders all exit tickets pertaining to a specified user" do
    user = User.create(email: "test@test.com")
    ticket = ExitTicket.create(title: "Title", grade_level: "third-grade", subject_area: "math", user_id: user.id)

    get "/users/#{user.id}/exit_tickets"
    expect(response.status).to eq(200)
  end
end