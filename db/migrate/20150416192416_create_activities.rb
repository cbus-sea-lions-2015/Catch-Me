class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :user_id
      t.integer :route_id
      t.integer :avg_speed
      t.integer :duration

      t.timestamps null: false
    end
  end
end
