require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do
      binding.pry
      Team.new(params[:team][:name], params[:team][:motto], params[:team][:heroes])
      Team.all.each do |team|
        team.each do |hero|
        Hero.new(heroes[0][:name], heroes[0][:power], heroes[0][:biography])
        #Hero.new(heroes.hero][:name], params[:team][:heroes][hero][:name], params[:team][:heroes][hero][:name])
      end
      erb :team
    end

end
