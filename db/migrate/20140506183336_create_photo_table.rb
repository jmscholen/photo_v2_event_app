class CreatePhotoTable < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.string :description
    end
  end
end
