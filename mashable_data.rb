require 'json'
require 'rest-client'

#class MashableData
stories =JSON.load(RestClient.get('http://mashable.com/stories.json'))

#end

#type_data=stories.class

#puts type_data

puts stories

## stories =JSON.load(RestClient.get('http://api.nytimes.com/svc/search/v1/article.json'))

