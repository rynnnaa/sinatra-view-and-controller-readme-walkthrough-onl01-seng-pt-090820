require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    oringinal_string = params["string"]
    @reversed_string = oringinal_string.reverse
    erb :reversed
  end

  get '/friends' do
    erb :friends
  end
end