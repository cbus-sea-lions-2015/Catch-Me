class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :user_id
      t.integer :courses_point_id
      t.integer :average_speed
      t.integer :duration
      t.integer :distance
      t.string :country
      t.string :city
      t.string :name

      t.timestamps null: false
    end
  end
end
