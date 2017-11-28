class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.string :genere
      t.integer :age
      t.datetime :start_trip
      t.datetime :end_trip
      t.integer :origin_id
      t.integer :destination_id

      t.timestamps
    end
  end
end
