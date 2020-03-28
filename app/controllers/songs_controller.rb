class SongsController < ApplicationController

    get '/songs' do 
        @songs = Song.all 
        erb :'/songs/index'
    end

    get '/songs/:slug' do 
        @song = Song.find_by_slug(params["slug"])
        erb :'/songs/show'
    end

    get '/songs/new' do 
        erb :'/songs/new'
    end

    post '/songs' do 
        binding.pry 
        @genres = Genre.all 
        @song = Song.create(params)
        redirect :'/songs/:slug'
    end

end 