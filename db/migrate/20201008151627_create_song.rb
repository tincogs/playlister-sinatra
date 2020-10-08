class CreateSong < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |s|
      s.string :name
      s.integer :artist_id
    end
  end
end
