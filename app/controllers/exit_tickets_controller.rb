class ExitTicketsController < ApplicationController
  before_action :set_exit_ticket, only: %i[ show update destroy ]

  # GET /exit_tickets
  def index
    @exit_tickets = ExitTicket.all

    render json: @exit_tickets
  end

  # GET /exit_tickets/1
  def show
    render json: @exit_ticket
  end

  # POST /exit_tickets
  def create
    @exit_ticket = ExitTicket.new(exit_ticket_params)

    if @exit_ticket.save
      render json: @exit_ticket, status: :created, location: @exit_ticket
    else
      render json: @exit_ticket.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /exit_tickets/1
  def update
    if @exit_ticket.update(exit_ticket_params)
      render json: @exit_ticket
    else
      render json: @exit_ticket.errors, status: :unprocessable_entity
    end
  end

  # DELETE /exit_tickets/1
  def destroy
    @exit_ticket.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exit_ticket
      @exit_ticket = ExitTicket.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def exit_ticket_params
      params.require(:exit_ticket).permit(:user_id, :title, :subject_area)
    end
end
