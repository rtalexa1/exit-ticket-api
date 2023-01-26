class ReflectionQuestionsController < ApplicationController
  before_action :set_reflection_question, only: %i[ show update destroy ]
  wrap_parameters false 

  # GET /reflection_questions
  def index
    @reflection_questions = ReflectionQuestion.all

    render json: @reflection_questions
  end

  # GET /reflection_questions/1
  def show
    render json: @reflection_question
  end

  # POST /reflection_""_questions
  def create
    begin
      ReflectionQuestion.transaction do 
        @reflection_questions = ReflectionQuestion.create!(reflection_questions_params[:reflection_questions])
      end
    rescue
      ActiveRecord::RecordInvalid => exception
      @reflection_questions = {
        error: {
          status: 422,
          message: exception
        }
      }
    end

    render json: @reflection_questions
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
      @reflection_question = ReflectionQuestion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reflection_questions_params
      params.permit(reflection_questions: [:text])
    end
end