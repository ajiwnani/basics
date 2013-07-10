require 'json'
require 'rest-client'

class RemoteSource
Moviehash={}

def initialize
   attr_accessor :event_name, :web_description
    @event_name = event_name
    @web_description = web_description
    Moviehash[@event_name => @web_description]
    end
end  

def self.events
    nyt_events=RestClient.get("http://api.nytimes.com/svc/events/v2/listings?&api-key=0ceb24caf156ce009bed8bdedf0e77a6:0:67850585")
    events= JSON.load(nyt_events)
    events.map do |event|
    Moviehash[event["event_name"]} => event["web_description"]]
    end
end
  
     

  