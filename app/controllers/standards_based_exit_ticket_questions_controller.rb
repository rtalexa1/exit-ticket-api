class StandardsBasedExitTicketQuestionsController < ApplicationController
  before_action :set_standards_based_exit_ticket_question, only: %i[ show update destroy ]
  wrap_parameters false 

  # GET /standards_based_exit_ticket_questions
  def index
    @standards_based_exit_ticket_questions = StandardsBasedExitTicketQuestion.all

    render json: @standards_based_exit_ticket_questions
  end

  # GET /standards_based_exit_ticket_questions/1
  def show
    render json: @standards_based_exit_ticket_question
  end

  # POST /standards_based_exit_ticket_questions
  def create
    begin
      StandardsBasedExitTicketQuestion.transaction do
        @standards_based_exit_ticket_questions = StandardsBasedExitTicketQuestion
          .create!(standards_based_exit_ticket_questions_params[:standards_based_exit_ticket_questions])
      end
    rescue ActiveRecord::RecordInvalid => exception
      @standards_based_exit_ticket_questions = {
        error: {
          status: 422,
          message: exception
        }
      }
    end

    render json: @standards_based_exit_ticket_questions
  end

  # PATCH/PUT /standards_based_exit_ticket_questions/1
  def update
    if @standards_based_exit_ticket_question
      .update(standards_based_exit_ticket_question_params)
      render json: @standards_based_exit_ticket_question
    else
      render json: @standards_based_exit_ticket_question.errors, 
      status: :unprocessable_entity
    end
  end

  # DELETE /standards_based_exit_ticket_questions/1
  def destroy
    @standards_based_exit_ticket_question.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_standards_based_exit_ticket_question
      @standards_based_exit_ticket_question = StandardsBasedExitTicketQuestion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def standards_based_exit_ticket_questions_params
      params.permit(standards_based_exit_ticket_questions: [:exit_ticket_id, :sb_question_id])
    end
end
