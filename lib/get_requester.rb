require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

    URL = 'https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json'

    def get_response_body
        uri = URI.parse(URL)
        responce = Net::HTTP.get_response(uri)
        responce.body
    end

    def parse_json
        x = JSON.parse(self.get_response_body)
        
    end



end
