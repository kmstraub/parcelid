class Property < ActiveRecord::Base

	has_many :stories
	
	extend ::Geocoder::Model::ActiveRecord

	def full_address
		[address, city, state, zip].compact.join(', ')
	end
	geocoded_by :full_address

	after_validation :geocode

	def self.search(search)
		if search 
			find(:all, :conditions => ['city LIKE ?', "%#{search}%"])
		else
			find(:all)
		end
	end
end