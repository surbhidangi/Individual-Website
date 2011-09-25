class CreateCollections < ActiveRecord::Migration
  def self.up
    create_table :collections do |t|
      t.string :collection_title
      t.string :inspiration
      t.string :artist

      t.timestamps
    end
  end

  def self.down
    drop_table :collections
  end
end
