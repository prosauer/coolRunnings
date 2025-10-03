class HomesController < ApplicationController
  allow_unauthenticated_access only: [ :show ]
  def show
    @events = Event.all
  end
end
