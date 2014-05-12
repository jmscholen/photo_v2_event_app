class Photo < ActiveRecord::Base
	has_attached_file :photo_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :photo_image, :content_type => ["image/jpg", "image/gif", "image/png", "image/jpeg"]
  	validates_attachment_presence :photo_image
  	validates_presence_of :name
	has_many :comments
	has_and_belongs_to_many :tags
	accepts_nested_attributes_for :comments
end