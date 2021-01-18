class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.integer :user_id
      t.string :title
      t.text :body
      t.string :image_id
      t.text :hashbody

      t.timestamps
    end
  end
end
