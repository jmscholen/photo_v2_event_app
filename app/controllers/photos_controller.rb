class PhotosController < ApplicationController
	def index
		@photos = Photo.all 
	end

	def show
		@photo = Photo.find(params[:id])
		@new_comment = @photo.comments.build
		@new_tag = @photo.tags.build
	end

	def new
		@new_photo = Photo.new 
	end

	def create
		@new_photo = Photo.new(photo_params)
		if @new_photo.save
			redirect_to photos_path
		else
			render :new
		end
	end

	def edit
		@photo = Photo.find(params[:id])
	end

	def update
		@photo = Photo.find(params[:id])
		if @photo.update_attributes(photo_params)
			redirect_to photo_path 
		else
			render :edit
		end
	end

	def destroy
		@photo = Photo.find(params[:id])
		@photo.destroy
		redirect_to photos_path
	end

	private

	def photo_params
		params.require(:photo).permit(:name, :description, :photo_image, comments_attributes: :content, tags_attributes: :tag)
	end
end
