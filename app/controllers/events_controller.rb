class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.create! params.expect(event: [:name, :date, :round_distance_in_meters, :description])
    redirect_to @event
  end

  def show
    @event = Event.find(params.expect(:id))
  end
end
