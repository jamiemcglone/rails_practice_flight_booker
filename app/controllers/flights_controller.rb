class FlightsController < ApplicationController

    def index
        @flights = Flight.all
        return if search_params.empty?
        @booking_options = find_booking_options
    end

    def flight_params
        params.permit(:departure_airport_id, :arrival_airport_id_id, :date)
    end
    
    def search_params
        params.permit(:departure_airport_id, :arrival_airport_id, :departure_date, :departure_date, :no_of_passengers, :commit)
    end

    def find_booking_options
        flights = []
        Flight.all.each do |flight|
            if params[:departure_airport_id].to_i == flight.departure_airport_id && params[:arrival_airport_id].to_i == flight.arrival_airport_id && Date.parse(params[:departure_date]) == flight.departure_date
                flash.now[:alert] = "Flights found"
                flights.append(flight)
            end
        end
        return flights
    end
end