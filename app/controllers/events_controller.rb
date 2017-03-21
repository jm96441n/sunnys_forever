class EventsController < ApplicationController

  def index
    @events = Event.order(:date)
    needed = 65000.00
    raised = Money.find_by(name: 'Amount Raised')
    percent = (raised.dollar/needed) * 100
    @amount_needed = "$65,000"
    @amount_raised = raised.dollar
    @goal_percent = "#{percent.to_i}%"
  end

end
