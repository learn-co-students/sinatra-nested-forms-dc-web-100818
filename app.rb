require './environment'
require 'pry'
module FormsLab

  class App < Sinatra::Base

    # set :views, "app/views/pirates"

    get '/' do
      erb :opening
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      @ships= params[:pirate][:ships].collect do |details|
        Ship.new(details)
      end

      erb :show

    end


  end
end
