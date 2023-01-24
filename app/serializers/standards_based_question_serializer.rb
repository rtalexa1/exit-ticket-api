class QuestionSerializer
  def initialize(question)
    @question = question
  end

  def call
    { 
      image_url: @question.image_url
    }
  end
end