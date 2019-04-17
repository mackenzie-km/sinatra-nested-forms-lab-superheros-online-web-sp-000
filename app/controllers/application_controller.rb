require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do
      Team.new(params[:team][:name], params[:team][:motto])
      Hero.new(params[:team][:hero][:name], params[:team][:hero][:power], params[:team][:hero][:biography])
      erb :team
    end

end
