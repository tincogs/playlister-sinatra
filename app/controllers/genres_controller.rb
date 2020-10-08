class GenresController < ApplicationController

    get "/genres" do
        @genres = Genre.all
        erb :genre_index
    end

    get '/genres/:slug' do |slug|
        @genre = Genre.find_by_slug(slug)

        erb :genre_show
    end

end