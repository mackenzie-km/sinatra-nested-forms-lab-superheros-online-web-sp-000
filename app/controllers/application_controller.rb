require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do
      @team = Team.new(params[:team][:name], params[:team][:motto], params[:team][:heroes])
      @heroes = []
      Team.all.collect do |line|
        line.heroes.collect do |hero|
          new_hero = Hero.new(hero[:name], hero[:power], hero[:biography])
          @heroes << new_hero
        end
      end
      erb :team
    end

end
