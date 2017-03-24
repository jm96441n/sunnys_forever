class AdminEventsController < ApplicationController
  before_action :set_admin_event, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /admin_events
  # GET /admin_events.json
  def index
    @admin_events = Event.order(:date)
    @money = Money.first
  end

  # GET /admin_events/1
  # GET /admin_events/1.json
  def show
  end

  # GET /admin_events/new
  def new
    @admin_event = Event.new
  end

  # GET /admin_events/1/edit
  def edit
  end

  # POST /admin_events
  # POST /admin_events.json
  def create
    @admin_event = Event.new(admin_event_params)
    if @admin_event.save
      redirect_to admin_events_url, notice: 'Admin event was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin_events/1
  # PATCH/PUT /admin_events/1.json
  def update
    if @admin_event.update(admin_event_params)
      redirect_to admin_events_url, notice: 'Admin event was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin_events/1
  # DELETE /admin_events/1.json
  def destroy
    @admin_event.destroy
    respond_to do |format|
      format.html { redirect_to admin_events_url, notice: 'Admin event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_event
      @admin_event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_event_params
      params.require(:event).permit(:date, :location, :location_url, :time, :ticket_url, :details)
    end
end
