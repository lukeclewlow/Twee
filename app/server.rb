require 'sinatra/base'
require 'twitter'

class Twee < Sinatra::Base
  get '/' do
    client = Twitter::REST::Client.new do |config|
      config.consumer_key ='qLkw7SpVkDrK3kkMoERvhiVeB'
      config.consumer_secret ='CEfSP70rP8p7nONy04aEsinyNWJyMS1kwyq6OvZqaXjQdRZQDX'
      config.access_token ='2829995214-tWaAgrdAlBcOu408rtLtAAupDe7QjNdcaXXbqSe'
      config.access_token_secret ='9t1i9gkqZ62VpQSFPSL6vQDV3Vu8WsSgHWjwFr99zqjnj'
    end

   @tweets = client.search("/*/ -rt", lang: 'en').take(5)
      erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
