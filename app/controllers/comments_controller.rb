class CommentsController < ApplicationController
	def create
		@story = Story.find(params[:story_id])
		@comment = @story.comments.create(params[:comment].permit(:commenter, :body))
		redirect_to story_path(@story)
	end

	def destroy
		@story = Story.find(params[:story_id])
		@comment = @story.comments.find(params[:id])
		@comment.destroy
		redirect_to story_path(@story)
	end

end
