class CommentsController < ApplicationController
	def index 
	end

	def show
	end

	def new
	end

	def create
		#@photo_id = comment_params[2]
		@new_comment = Comment.new(comment_params)
		if @new_comment.save
			redirect_to :back #photo_path(comment_params)
		else
			redirect_to :back
		end
	end	

	def edit

	end

	def update
	end

	def destroy
	end

	private
	
	def comment_params
		params.require(:comment).permit(:content,:photo_id)
	end
end

