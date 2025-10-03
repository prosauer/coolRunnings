class RunnersController < ApplicationController
  def new
    @event = Event.find params.expect(:event_id)
    @runner = Current.user.runners.new
  end
  def create
    @event = Event.find params.expect(:event_id)
    runners_params = params.expect(runner: [:rounds, :minutes, :seconds, :event_organisation_id])
    runners_params[:time_per_round_in_seconds] = runners_params.delete(:minutes).to_i.minutes + runners_params.delete(:seconds).to_i
    @runner = Current.user.runners.create! event: @event, **runners_params 
    redirect_to [@event, @runner]
  end
  def show
    @runner = Runner.find params.expect(:id)
  end
end
