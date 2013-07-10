class Events
  attr_accessor :event_name, :web_description

  def initialize(event_name, web_description)
    @event_name = event_name
    @web_description = web_description
    end
end

