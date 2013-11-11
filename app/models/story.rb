class Story < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	
	belongs_to :property
	
end
