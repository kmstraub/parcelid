class PropertiesController < ApplicationController

def index
	@properties = Property.search(params[:search])

end

def new
	@property = Property.new
end
def create
	@property = Property.new(property_params)
	@property.save
	redirect_to @property
end
def show
	@property = Property.find(params[:id])
	
	
end
def edit
	@property = Property.find(params[:id])
end

def update
	@property = Property.find(params[:id])
	if @property.update(params[:property].permit(:address, :address_2, :city, :state, :zip, :name, :county, :neighborhood))
		redirect_to @property
	else
		render 'edit'
	end
end


private
def property_params
	params.require(:property).permit(:address, :address_2, :city, :state, :zip, :name, :county, :neighborhood, :property_id, :story_type, :latitude, :longitude)
end

end