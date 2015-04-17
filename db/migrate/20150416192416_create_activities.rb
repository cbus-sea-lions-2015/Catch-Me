class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :user_id
      t.integer :activities_point_id
      t.integer :average_speed
      t.integer :duration

      t.timestamps null: false
    end
  end
end
