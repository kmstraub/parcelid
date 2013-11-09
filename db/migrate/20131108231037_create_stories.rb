class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.date :when
      t.string :title
      t.text :description
      t.string :source

      t.timestamps
    end
  end
end
