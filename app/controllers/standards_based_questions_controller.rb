class StandardsBasedQuestionsController < ApplicationController
  before_action :set_standards_based_question, only: :show

  def index
    # @standards_based_questions = StandardsBasedQuestion.all
    @standards_based_questions = StandardsBasedQuestion.find_by_student_expectation(params[:student_expectation])
    
    render json: @standards_based_questions
  end

  def show
    render json: @standards_based_question
  end

  private
    def set_standards_based_question
      @standards_based_question = StandardsBasedQuestion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def standards_based_question_params
      params.require(:standards_based_question)
      .permit(:student_expectation)
    end
end