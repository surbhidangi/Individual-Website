class CreateArtworks < ActiveRecord::Migration
  def self.up
    create_table :artworks do |t|
      t.string :art_title
      t.integer :collection_id
      t.string :image_url
      t.string :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :artworks
  end
end
