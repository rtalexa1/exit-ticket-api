class StandardsBasedQuestionsController < ApplicationController
  before_action :set_standards_based_question, only: :show

  def index
    @standards_based_questions = StandardsBasedQuestion.all

    render json: @standards_based_questions
  end

  def show
    render json: @standards_based_question
  end

  private
    def set_standards_based_exit_ticket_question
      @standards_basedquestion = StandardsBasedQuestion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def standards_based_question_params
      params.require(:standards_based_question)
      .permit(:student_expectation)
    end
end