class DropCommentsPhotos < ActiveRecord::Migration
  def change
    drop_table :comments_photos
  end
end
