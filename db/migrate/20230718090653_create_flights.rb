class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.integer :departure_airport
      t.integer :arrival_airport
      t.datetime :departure_date
      t.string :flight_duration

      t.timestamps
    end
  end
end
