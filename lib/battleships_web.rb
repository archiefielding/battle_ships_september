require 'sinatra/base'

class BattleshipsWebWed < Sinatra::Base

set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  get '/new_game' do
    erb :new_game
  end

  get '/game_board' do
    erb :game_board
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
