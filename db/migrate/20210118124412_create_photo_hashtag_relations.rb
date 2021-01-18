class CreatePhotoHashtagRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :photo_hashtag_relations do |t|
      t.references :photo, foreign_key: true
      t.references :hashtag, foreign_key: true
      t.timestamps
    end
  end
end
