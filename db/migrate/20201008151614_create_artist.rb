class CreateArtist < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |a|
      a.string :name
    end
  end
end
