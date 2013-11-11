class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :address
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :neighborhood
      t.string :county
      t.string :name

      t.timestamps
    end
  end
end
