require 'sinatra/base'
# require_relative "./lib/chitter"

class Chitter < Sinatra::Base
  get '/' do
    @all_peeps = Chitter.all
    erb :index
  end

  get '/new_peep' do
    erb :new_peep
  end

  post '/new_peep' do
    peep = params[:peep]
    redirect '/'
  end

  run! if app_file == $0
end
