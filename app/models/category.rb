class Category < ActiveRecord::Base
	self.inheritance_column = nil
	has_many :stories
end
