class ArtistsController < ApplicationController

    get "/artists" do
        @artists = Artist.all
        erb :artist_index
    end

    get '/artists/:slug' do |slug|
        @artist = Artist.find_by_slug(slug)
<<<<<<< HEAD

=======
>>>>>>> f4835377c9e5e57f2fae7bcde28af12979810c21
        erb :artist_show
    end

end
