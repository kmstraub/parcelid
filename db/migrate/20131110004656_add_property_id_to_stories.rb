class AddStorytypeToStories < ActiveRecord::Migration
  def change
  	add_column :properties, :latitude, :float, :longitude, :float
  end
end
