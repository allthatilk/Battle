require 'sinatra/base'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    player_1 = Player.new(params[:player_name_1])
    player_2 = Player.new(params[:player_name_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @player_1 = $game.players[0]
    @player_2 = $game.players[1]
    erb(:play)
  end

  get '/attack' do
    @player_1 = $game.players[0]
    @player_2 = $game.players[1]
    $game.attack(@player_2)
    erb(:attack)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
