class StandardsBasedQuestionSerializer
  def initialize(question)
    @question = question
  end

  def call
    { 
      id: @question.id,
      image_url: @question.image_url
    }
  end
end