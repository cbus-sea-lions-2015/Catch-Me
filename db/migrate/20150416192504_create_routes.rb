class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.integer :creator_id
      t.string :name
      t.string :country
      t.string :city

      t.timestamps null: false
    end
  end
end
