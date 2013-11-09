class StoriesController < ApplicationController
	
	def index
		@stories = Story.all
	end


	def new
		@story = Story.new
		
	end

	def create
		@story = Story.new(story_params)

		@story.save
		redirect_to @story
	end

	def show
		@story = Story.find(params[:id])
	end

	def edit
		@story = Story.find(params[:id])
	end

	def update
		@story = Story.find(params[:id])
		if @story.update(params[:story].permit(:when, :title, :description, :source))
			redirect_to @story
		else
			render 'edit'
		end
	end

	def destroy
		@story = Story.find(params[:id])
		@story.destroy

		redirect_to stories_path

	end



	private
	def story_params
		params.require(:story).permit(:when, :title, :description, :source)
	end
end
