class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_person!, except: [:index, :show]

  # GET /tickets
  # GET /tickets.json
  def index
    @tickets = Ticket.all
  end

  # GET /tickets/1
  # GET /tickets/1.json
  def show
  end

  # GET /tickets/new
  def new
    event = params[:event]
    @hasTickets = Ticket.where(
      :event_id => ["event_id = ?", event], :person_id => ["person_id = ?", current_person.id]
    ).count
    @ticket = Ticket.new
    @event = Event.find(event)
  end

  # GET /tickets/1/edit
  def edit
  end

  # POST /tickets
  # POST /tickets.json
  def create
    ticket = ticket_params

    qty = @qty.to_i
    i = 0

    while i < qty
      @ticket = Ticket.new(ticket)
      if @ticket.save
        i = i + 1
      end
    end

    # Reseta o i
    i = 0
    
    # Após a compra, redirecionar o usuário para a página principal
    redirect_to events_path

  end

  # PATCH/PUT /tickets/1
  # PATCH/PUT /tickets/1.json
  def update
    respond_to do |format|
      if @ticket.update(ticket_params)
        format.html { redirect_to @ticket, notice: 'Ticket was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket }
      else
        format.html { render :edit }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tickets/1
  # DELETE /tickets/1.json
  def destroy
    @ticket.destroy
    respond_to do |format|
      format.html { redirect_to tickets_url, notice: 'Ticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_params
      @qty = params["quantidade"]
      params.require(:ticket).permit(:description, :person_id, :event_id)
    end
end