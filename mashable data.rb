require 'json'
require 'rest-client'

#class MashableData
stories =JSON.load(RestClient.get('http://mashable.com/stories.json'))

#end

puts stories

## stories =JSON.load(RestClient.get('http://api.nytimes.com/svc/search/v1/article.json'))

