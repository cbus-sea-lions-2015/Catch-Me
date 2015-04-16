class CreateActivitiesData < ActiveRecord::Migration
  def change
    create_table :activities_data do |t|
      t.integer :longitud
      t.integer :latitude
      t.datetime :datetime
      t.integer :activity_id

      t.timestamps null: false
    end
  end
end
