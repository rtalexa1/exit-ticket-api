require "test_helper"

class ExitTicketQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exit_ticket_question = exit_ticket_questions(:one)
  end

  test "should get index" do
    get exit_ticket_questions_url, as: :json
    assert_response :success
  end

  test "should create exit_ticket_question" do
    assert_difference("ExitTicketQuestion.count") do
      post exit_ticket_questions_url, params: { exit_ticket_question: { exit_ticket_id: @exit_ticket_question.exit_ticket_id, question_id: @exit_ticket_question.question_id } }, as: :json
    end

    assert_response :created
  end

  test "should show exit_ticket_question" do
    get exit_ticket_question_url(@exit_ticket_question), as: :json
    assert_response :success
  end

  test "should update exit_ticket_question" do
    patch exit_ticket_question_url(@exit_ticket_question), params: { exit_ticket_question: { exit_ticket_id: @exit_ticket_question.exit_ticket_id, question_id: @exit_ticket_question.question_id } }, as: :json
    assert_response :success
  end

  test "should destroy exit_ticket_question" do
    assert_difference("ExitTicketQuestion.count", -1) do
      delete exit_ticket_question_url(@exit_ticket_question), as: :json
    end

    assert_response :no_content
  end
end
