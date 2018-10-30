require './environment'
require_relative 'app/models/ship.rb'
require_relative 'app/models/pirate.rb'
require 'pry'
module FormsLab
  class App < Sinatra::Base


    get '/' do
      erb :'pirates/index'
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(
        params["pirate"]["name"],
        params["pirate"]["weight"],
        params["pirate"]["height"])

      params[:pirate][:ships].each do |details|
      Ship.new(
        details["name"],
        details["type"],
        details["booty"])

      end

      @ships = Ship.all

      erb :'pirates/show'
    end


  end
end
