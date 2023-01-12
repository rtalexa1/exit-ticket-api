require "test_helper"

class ExitTicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exit_ticket = exit_tickets(:one)
  end

  test "should get index" do
    get exit_tickets_url, as: :json
    assert_response :success
  end

  test "should create exit_ticket" do
    assert_difference("ExitTicket.count") do
      post exit_tickets_url, params: { exit_ticket: { subject_area: @exit_ticket.subject_area, title: @exit_ticket.title, user_id: @exit_ticket.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show exit_ticket" do
    get exit_ticket_url(@exit_ticket), as: :json
    assert_response :success
  end

  test "should update exit_ticket" do
    patch exit_ticket_url(@exit_ticket), params: { exit_ticket: { subject_area: @exit_ticket.subject_area, title: @exit_ticket.title, user_id: @exit_ticket.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy exit_ticket" do
    assert_difference("ExitTicket.count", -1) do
      delete exit_ticket_url(@exit_ticket), as: :json
    end

    assert_response :no_content
  end
end
