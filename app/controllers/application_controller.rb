require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do
      binding.pry
      Team.new(params[:team][:name], params[:team][:motto])
      Team.all.each do |hero|
        Hero.new(params[:team][:heroes][hero][:name], params[:team][:heroes][hero][:name], params[:team][:heroes][hero][:name])
      end
      erb :team
    end

end
