require "test_helper"

class StandardsBasedQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @standards_based_question = standards_based_questions(:one)
  end

  test "should get index" do
    get standards_based_questions_url, as: :json
    assert_response :success
  end

  test "should create standards_based_question" do
    assert_difference("StandardsBasedQuestion.count") do
      post standards_based_questions_url, params: { standards_based_question: { student_expectation: @standards_based_question.student_expectation } }, as: :json
    end

    assert_response :created
  end

  test "should show standards_based_question" do
    get standards_based_question_url(@standards_based_question), as: :json
    assert_response :success
  end

  test "should update standards_based_question" do
    patch standards_based_question_url(@standards_based_question), params: { standards_based_question: { student_expectation: @standards_based_question.student_expectation } }, as: :json
    assert_response :success
  end

  test "should destroy standards_based_question" do
    assert_difference("StandardsBasedQuestion.count", -1) do
      delete standards_based_question_url(@standards_based_question), as: :json
    end

    assert_response :no_content
  end
end
