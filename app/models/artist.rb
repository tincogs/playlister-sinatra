class Artist < ActiveRecord::Base
    has_many :songs
    has_many :genres, through: :songs

    def slug
        sluggy = self.name.gsub(/[^a-zA-Z ]/, '')
        
        sluggy.gsub!(" ", "-")
        sluggy.downcase
    end

    def self.find_by_slug(slug)
        Artist.all.find do |s|
            s.slug == slug
        end
    end
end