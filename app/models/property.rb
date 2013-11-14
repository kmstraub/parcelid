class Property < ActiveRecord::Base

	has_many :stories
	
	extend ::Geocoder::Model::ActiveRecord

	

	def full_address
		[address, city, state, zip].compact.join(', ')
	end
	geocoded_by :full_address

	after_validation :geocode

end