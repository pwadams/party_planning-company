class EventsController < ApplicationController
  before_action do
    @company = Company.find(params[:company_id])
  end

  def index

    @events = @company.events
  end

  def new

    @event = @company.events.new
  end

  def create

    @event = @company.events.new(event_params)
      if @event.save
        redirect_to company_events_path(@company)
      else
        render :new
      end
  end

    def show
    @event = @company.events.find(params[:id])
  end

private

  def event_params
  params.require(:event).permit(:name, :date, :company_id)
  end
end
