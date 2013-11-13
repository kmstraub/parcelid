class StoriesController < ApplicationController
	
	def new
		@property = Property.find(params[:property_id])
		@story = @property.stories.new
	end


	def create
		@property = Property.find(params[:property_id])
		@story = @property.stories.create(story_params)
		@story = Story.new(story_type: 2)

		redirect_to property_path(@property)
	end

	def edit
		@property = Property.find(params[:property_id])
		@story = @property.stories.find(params[:id])
	end

	def update
		@property = Property.find(params[:property_id])
		@story = @property.stories.find(params[:id])

		if @story.update(story_params)
			redirect_to property_path(@property)

		else
			render 'edit'
		end
	end


	def destroy
		@property = Property.find(params[:property_id])
		@story = @property.stories.find(params[:id])
		@story.destroy
		redirect_to property_path(@property)
	end

private
def story_params
	params.require(:story).permit(:story_type, :when, :title, :description, :source, :property_id)
end


	end