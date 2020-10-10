class SongsController < ApplicationController

    get "/songs" do
        @songs = Song.all
        erb :song_index
    end

<<<<<<< HEAD
    get '/songs/new' do
        @genres = Genre.all
        erb :song_new

    end

    post '/songs' do
        new_song = Song.create(name: params[:song_name])

        new_artist = Artist.find_or_create_by(name: params[:artist_name])

        params[:genre_ids].each do |g|
            a_genre = Genre.find(g)
            new_song.genres << a_genre
        end

        new_artist.songs << new_song
        
        redirect "/songs/#{new_song.slug}"
    end

    patch '/songs/:slug' do |slug|
        @song = Song.find_by_slug(slug)
        @artist = Artist.find_or_create_by(name: params["artist"]["name"])
        @song.genres.clear

        params[:genre_ids].each do |g|
            @song.genres << Genre.find(g)
        end
        
        @artist.songs << @song

        @song.update(params["song"])
        @artist.update(params["artist"])

        redirect "/songs/#{slug}"
    end


    get '/songs/:slug' do |slug|
=======
    get "/songs/:slug" do |slug|
>>>>>>> f4835377c9e5e57f2fae7bcde28af12979810c21
        @song = Song.find_by_slug(slug)
        erb :song_show
    end

    get'/songs/:slug/edit' do |slug|
        @song = Song.find_by_slug(slug)
        @genres = Genre.all

        erb :song_edit
    end



end
