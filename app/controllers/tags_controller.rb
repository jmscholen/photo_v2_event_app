class TagsController < ApplicationController

	def index
		@tags = Tag.all
	end

	def show
		@tag = Tag.find(params[:id])
	end

	def new
		@new_tag = Tag.new
	end

	def create
		photo = Photo.find(params[:photo_id])
		@new_tag = Tag.new(tag_params)
		if @new_tag.save
			photo.tags << @new_tag
			redirect_to photo_path(photo)
		else
			redirect :back
		end
	end

	def edit
		@tag = Tag.find(params[:id])
	end

	def update
		@tag = Tag.find(params[:id])
		if @tag.update_attributes(tag_params)
			render :show	
		else
			render :edit
		end
	end


	def destroy
		@tag = Tag.find(params[:id])
		if @tag.destroy
			render :index
		else
			render :edit
		end
	end

	private

	def tag_params
	 params.require(:tag).permit!
	end
end
