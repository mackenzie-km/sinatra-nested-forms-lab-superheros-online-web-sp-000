require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do
      binding.pry
      Team.new(params[:team][:name], params[:team][:motto], params[:team][:heroes])
      Team.all.each do |line|
        line.heroes.each do |hero|
          Hero.new(hero[:name], hero[:power], hero[:biography])
        end
      end
      erb :team
    end

end
