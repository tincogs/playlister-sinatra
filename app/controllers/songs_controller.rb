class SongsController < ApplicationController

    get "/songs" do
        @songs = Song.all
        erb :song_index
    end

    get '/songs/:slug' do |slug|
        @song = Song.find_by_slug(slug)

        erb :song_show
    end


end