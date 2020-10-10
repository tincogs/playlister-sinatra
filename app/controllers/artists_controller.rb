class ArtistsController < ApplicationController

    get "/artists" do
        @artists = Artist.all
        erb :artist_index
    end

    get '/artists/:slug' do |slug|
        @artist = Artist.find_by_slug(slug)

        erb :artist_show
    end

end
