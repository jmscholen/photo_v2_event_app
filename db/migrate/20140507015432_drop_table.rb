class DropTable < ActiveRecord::Migration
    def down
    drop_table :comments_photos
  	end
end
