class CreateCommentPhoto < ActiveRecord::Migration
  def change
    create_table :comments_photos, id: false do |t|
      t.belongs_to :comment
      t.belongs_to :photo
    end
  end
end
