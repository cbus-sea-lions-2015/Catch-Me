class CreateCoursePoints < ActiveRecord::Migration
  def change
    create_table :activity_points do |t|
      t.integer :longitude
      t.integer :latitude
      t.integer :course_id
      t.integer :altitude
      t.integer :speed

      t.timestamps
    end
  end
end
