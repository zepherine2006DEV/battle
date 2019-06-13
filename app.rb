require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @player_1 = params["player_name_1"]
    @player_2 = params["player_name_2"]
    erb :play
  end

run! if app_file == $0
end
