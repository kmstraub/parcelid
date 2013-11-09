class AddCategoryIdIndexToStories < ActiveRecord::Migration
  def change
    add_index :stories, :category_id
  end
end
