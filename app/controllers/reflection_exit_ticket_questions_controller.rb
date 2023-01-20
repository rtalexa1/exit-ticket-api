class ReflectionExitTicketQuestionsController < ApplicationController
  before_action :set_reflection_exit_ticket_question, only: %i[ show update destroy ]

  # GET /reflection_exit_ticket_questions
  def index
    @reflection_exit_ticket_questions = ReflectionExitTicketQuestion.all

    render json: @reflection_exit_ticket_questions
  end

  # GET /reflection_exit_ticket_questions/1
  def show
    render json: @reflection_exit_ticket_question
  end

  # POST /reflection_exit_ticket_questions
  def create
    @reflection_exit_ticket_question = Reflection_ExitTicketQuestion.new(
      reflection_exit_ticket_question_params
    )

    if @reflection_exit_ticket_question.save
      render json: @reflection_exit_ticket_question, 
        status: :created, 
        location: @reflection_exit_ticket_question
    else
      render json: @reflection_exit_ticket_question.errors, 
      status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reflection_exit_ticket_questions/1
  def update
    if @reflection_exit_ticket_question.update(reflection_exit_ticket_question_params)
      render json: @reflection_exit_ticket_question
    else
      render json: @reflection_exit_ticket_question.errors, 
      status: :unprocessable_entity
    end
  end

  # DELETE /reflection_exit_ticket_questions/1
  def destroy
    @reflection_exit_ticket_question.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reflection_exit_ticket_question
      @reflection_exit_ticket_question = ReflectionExitTicketQuestion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reflection_exit_ticket_question_params
      params.require(:reflection_exit_ticket_question).permit(:exit_ticket_id, :ref_question_id)
    end
end
