class CreateTag < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag_name
      t.integer :photo_id
    end
 end

end
