require 'sinatra/base'
#require 'player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    
    $player1 = Player.new(params["player_name_1"])
    $player2 = Player.new(params["player_name_2"])

    p "*** $player1"
    p $player1

    ## store it globally to make it available later

    redirect "/play"
  end

  get '/play' do
   
    p "*** $player1"
    p $player1

    @player_1 = $player1 ## now comes from the model, in the global
    @player_2 = $player2 ## ditto
    @player_1_hp = 100
    @player_2_hp = 100
    erb :play
  end

  get '/attack' do
  p "in attack method"
  erb :attack_confirmed
  end

run! if app_file == $0
end
