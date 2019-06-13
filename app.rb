require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @player_1 = params["player_name_1"]
    @player_2 = params["player_name_2"]

    session[:name1] = @player_1
    session[:name2] = @player_2
   
    redirect "/play"
  end

  get '/play' do
    @player_1 = session[:name1]
    @player_2 = session[:name2]
    @player_1_hp = 100
    @player_2_hp = 100
    erb :play
  end

run! if app_file == $0
end
