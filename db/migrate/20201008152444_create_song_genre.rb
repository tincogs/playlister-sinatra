class CreateSongGenre < ActiveRecord::Migration[5.2]
  def change
    create_table :songgenres do |sg|
    sg.integer :song_id
    sg.integer :genre_id
    end
  end
end
