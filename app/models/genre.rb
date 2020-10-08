class Genre < ActiveRecord::Base
    has_many :song_genres
    has_many :songs, through: :song_genres
    has_many :artists, through: :songs

    
    def slug
        sluggy = self.name.gsub(/[^a-zA-Z ]/, '')
        
        sluggy.gsub!(" ", "-")
        sluggy.downcase
    end

    def self.find_by_slug(slug)
        Genre.all.find do |s|
            s.slug == slug
        end
    end
end