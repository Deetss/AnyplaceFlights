class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.date :start_date
      t.time :flight_duration
      t.references :from_airport
      t.references :to_airport
      
      t.timestamps null: false
    end
    
    add_foreign_key :flights, :airports, column: :from_airport, primary_key: :id
    add_foreign_key :flights, :airports, column: :to_airport, primary_key: :id
  end
end
