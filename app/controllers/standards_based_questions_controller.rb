class StandardsBasedQuestionsController < ApplicationController

  def index
    @standards_based_questions = StandardsBasedQuestion.all

    render json: @standards_based_questions
  end

  def show
    render json: @standards_based_question
  end
end