require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do
      binding.pry
      @team = Team.new(params[:team][:name], params[:team][:motto], params[:team][:heroes])
      Team.all.collect do |line|
        line.heroes.collect do |hero|
          Hero.new(hero[:name], hero[:power], hero[:biography])
          @heroes << self
        end
      end
      erb :team
    end

end
