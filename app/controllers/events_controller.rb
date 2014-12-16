class EventsController < ApplicationController
  before_action do
    @company = Company.find(params[:company_id])
  end

  def index
    @events = @company.events
  end

  def show
    @event = @company.events.find(params[:id])
  end

  def new
    @event = @company.events.new
  end

  def create
    @event = @company.events.new(event_params)
    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit
    @event = @company.events.find(params[:id])
  end

  def update
    @event = @company.events.find(params[:id])
    if @event.update(event_params)
      redirect_to event_path(@event)
    else
      render :edit
    end
  end

  def destroy
    @event = @company.events.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:description)
  end

end
