class CommentsController < ApplicationController
	def new
		@property = Property.find(params[:property_id])
		@story = @property.stories.find(params[:story_id])
		@comment = @property.stories.comments.new
	end



	def create
		@property = Property.find(params[:property_id])
		@story = @property.stories.find(params[:story_id])
		@comment = @story.comments.create(comment_params)
		
		redirect_to property_path(@property)
	end

	def destroy
		@story = Story.find(params[:story_id])
		@comment = @story.comments.find(params[:id])
		@comment.destroy
		redirect_to story_path(@story)
	end

private
def comment_params
	params.require(:comment).permit(:commenter, :body, :story_id)
end
end
