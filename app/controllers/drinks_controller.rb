class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

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
    @ticket = Ticket.new
  end

  # GET /tickets/1/edit
  def edit
  end

  # POST /tickets
  # POST /tickets.json
  def create
    @Ticket = Ticket.new(Ticket_params)

    respond_to do |format|
      if @Ticket.save
        format.html { redirect_to @Ticket, notice: 'Ticket was successfully created.' }
        format.json { render :show, status: :created, location: @Ticket }
      else
        format.html { render :new }
        format.json { render json: @Ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Tickets/1
  # PATCH/PUT /Tickets/1.json
  def update
    respond_to do |format|
      if @Ticket.update(Ticket_params)
        format.html { redirect_to @Ticket, notice: 'Ticket was successfully updated.' }
        format.json { render :show, status: :ok, location: @Ticket }
      else
        format.html { render :edit }
        format.json { render json: @Ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Tickets/1
  # DELETE /Tickets/1.json
  def destroy
    @Ticket.destroy
    respond_to do |format|
      format.html { redirect_to Tickets_url, notice: 'Ticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_Ticket
      @Ticket = Ticket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def Ticket_params
      params.require(:Ticket).permit(:name, :temperature)
    end
end
