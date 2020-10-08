class SongsController < ApplicationController

    get "/songs" do
        @songs = Song.all
        erb :song_index
    end


end