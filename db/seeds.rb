# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

    Airport.create(code: "EDI")
    Airport.create(code: "JFK")
    Airport.create(code: "LAX")
    Airport.create(code: "DBX")
    Airport.create(code: "BGY")
    Airport.create(code: "CDG")

    Flight.create(departure_airport_id: 2, arrival_airport_id: 5, departure_date: Time.now, flight_duration: 540)
    Flight.create(departure_airport_id: 5, arrival_airport_id: 2, departure_date: Time.now, flight_duration: 540)
    Flight.create(departure_airport_id: 6, arrival_airport_id: 4, departure_date: Time.now, flight_duration: 300)
    Flight.create(departure_airport_id: 1, arrival_airport_id: 2, departure_date: Time.now, flight_duration: 300)
    Flight.create(departure_airport_id: 3, arrival_airport_id: 2, departure_date: Time.now, flight_duration: 280)

    Passenger.create(name: "Jamie", email: "Jamie")
    Passenger.create(name: "Bob", email: "bob@bobson.com")
    Passenger.create(name: "Johnson", email: "John@johnson.com")

    Booking.create(flight_id: 1)
    Booking.create(flight_id: 2)

    