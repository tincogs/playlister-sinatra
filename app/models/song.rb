class Song < ActiveRecord::Base
    belongs_to :artist
    has_many :song_genres
    has_many :genres, through: :song_genres


    def slug
        sluggy = self.name.gsub(/[^a-zA-Z ]/, '')
        
        sluggy.gsub!(" ", "-")
        sluggy.downcase
    end

    def self.find_by_slug(slug)
        Song.all.find do |s|
            s.slug == slug
        end
    end
end