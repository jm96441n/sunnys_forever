class EventsController < ApplicationController

  def index
    @first         = Event.where("date = ''").first
    @second        = Event.where("date = 'Every Monday in April with Brooklyn Caravan 7:00-9:00'").first
    @events        = Event.where("date != '' AND date != 'Every Monday in April with Brooklyn Caravan 7:00-9:00'").sort_by{|x| x.date.to_date}
    needed         = 65000.00
    raised         = Money.find_by(name: 'Amount Raised')
    percent        = (raised.dollar/needed) * 100
    @amount_needed = "$65,000"
    @amount_raised = raised.dollar
    @goal_percent  = "#{percent.to_i}%"
  end

end
