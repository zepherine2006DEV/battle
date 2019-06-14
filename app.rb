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
    @player_1_hp = $player1.hp
    @player_2_hp = $player2.hp
    erb :play
  end

  get '/attack' do
    p "in attack method"
    $player2.reduce_hp_by_attack_damage
    @player_1 = $player1 ## now comes from the model, in the global
    @player_2 = $player2 ## ditto
    @player_1_hp = $player1.hp
    @player_2_hp = $player2.hp
    erb :attack_confirmed
  end

run! if app_file == $0
end
