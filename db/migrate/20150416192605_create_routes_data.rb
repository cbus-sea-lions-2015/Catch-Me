class CreateRoutesData < ActiveRecord::Migration
  def change
    create_table :routes_data do |t|
      t.integer :longitud
      t.integer :latitude
      t.integer :route_id

      t.timestamps null: false
    end
  end
end
