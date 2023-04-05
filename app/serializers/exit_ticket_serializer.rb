class ExitTicketSerializer
  def initialize(exit_ticket)
    @exit_ticket = exit_ticket
  end

  def call
    { 
      id: @exit_ticket.id,
      user_id: @exit_ticket.user_id,
      title: @exit_ticket.title,
      grade_level: @exit_ticket.grade_level,
      subject_area: @exit_ticket.subject_area,
      questions: @exit_ticket.display_questions
    }
  end
end