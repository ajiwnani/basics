require 'json'
require 'rest-client'
require_relative 'Events'


class data_output
  @events = {}
  def self.events
    @events.map do |event|
      "Events: Name: #{event.event_name}, Description: (#{event.web_description})}"
    end
  end
end


class RemoteSource
  def self.get
      events= JSON.load(RestClient.get('http://api.nytimes.com/svc/events/v2/listings?&api-key=0ceb24caf156ce009bed8bdedf0e77a6:0:67850585'))
      Events["hot"].each do |event|
      Events.new {event{"event_name"]=> event["web_description"}}
    end
  end
end
	


