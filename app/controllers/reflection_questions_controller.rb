class ReflectionQuestionsController < ApplicationController
  before_action :set_reflection_question, only: %i[ show update destroy ]

  # GET /reflection_questions
  def index
    @reflection_questions = ReflectionExitTicketQuestion.all

    render json: @reflection__questions
  end

  # GET /reflection_questions/1
  def show
    render json: @reflection_question
  end

  # POST /reflection_""_questions
  def create
    @reflection_question = Reflection_ExitTicketQuestion.new(
      reflection_question_params
    )

    if @reflection_question.save
      render json: @reflection_question, 
        status: :created, 
        location: @reflection_question
    else
      render json: @reflection_question.errors, 
      status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reflection_questions/1
  def update
    if @reflection_question.update(reflection_question_params)
      render json: @reflection_question
    else
      render json: @reflection_question.errors, 
      status: :unprocessable_entity
    end
  end

  # DELETE /reflection_questions/1
  def destroy
    @reflection_question.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reflection_question
      @reflection_question = ReflectionExitTicketQuestion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reflection_question_params
      params.require(:reflection_question).permit(:text)
    end
end