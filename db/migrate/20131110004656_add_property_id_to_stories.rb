class AddPropertyIdToStories < ActiveRecord::Migration
  def change
  	add_column :stories, :property_id, :integer
  end
end
