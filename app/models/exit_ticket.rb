class ExitTicket < ApplicationRecord

  validates :title, :grade_level, :subject_area, presence: true

  belongs_to :user
  has_many :reflection_exit_ticket_questions
  has_many :reflection_questions, 
    through: :reflection_exit_ticket_questions
  has_many :standards_based_exit_ticket_questions
  has_many :standards_based_questions, 
    through: :standards_based_exit_ticket_questions

  def questions
    self.standards_based_exit_ticket_questions + self.reflection_exit_ticket_questions
  end

  def display_questions
    questions_to_display = self.questions.map do |question|
      if question.class == StandardsBasedExitTicketQuestion
        sb_question = StandardsBasedQuestion.find(question.sb_question_id)
        { type: "sb_question", order: question.order, image_url: sb_question.image_url }
      elsif question.class == ReflectionExitTicketQuestion
        ref_question = ReflectionQuestion.find(question.ref_question_id)
        { type: "ref_question", order: question.order, text: ref_question.text }
      end
    end
    questions_to_display
  end
end
