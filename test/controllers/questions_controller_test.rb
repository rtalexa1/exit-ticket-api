require "test_helper"

class ReflectionQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reflection_question = reflection_questions(:one)
  end

  test "should get index" do
    get reflection_questions_url, as: :json
    assert_response :success
  end

  test "should create reflection_question" do
    assert_difference("ReflectionQuestion.count") do
      post reflection_questions_url, params: { reflection_question: { text: @reflection_question.text } }, as: :json
    end

    assert_response :created
  end

  test "should show reflection_question" do
    get reflection_question_url(@reflection_question), as: :json
    assert_response :success
  end

  test "should update reflection_question" do
    patch reflection_question_url(@reflection_question), params: { reflection_question: { text: @reflection_question.text } }, as: :json
    assert_response :success
  end

  test "should destroy reflection_question" do
    assert_difference("ReflectionQuestion.count", -1) do
      delete reflection_question_url(@reflection_question), as: :json
    end

    assert_response :no_content
  end
end
