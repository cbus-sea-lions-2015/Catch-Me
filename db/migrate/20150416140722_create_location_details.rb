class CreateLocationDetails < ActiveRecord::Migration
  def change
    create_table :location_details do |t|
      t.string :user
      t.string :latitude
      t.string :longitude
      t.integer :order

      t.timestamps null: false
    end
  end
end
