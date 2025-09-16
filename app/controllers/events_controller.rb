class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    parameters = params.expect(event: {})
    @event = Event.create! parameters
    redirect_to @event
  end

  def show
    @event = Event.find(params.expect(:id))
  end

  def edit
    @event = Event.find(params.expect(:id))
  end

  def update
    @event = Event.find(params.expect(:id))
    if @event.update params.expect(event: [:name, :date, :round_distance_in_meters, :description, organisation_ids: []])
      redirect_to @event 
    else
      render(:edit, status: :unprocessable_content)
    end
  end
end
