class Airport < ApplicationRecord
    has_many :departing_flights, class_name: :Flight, foreign_key: :departure_airport_id, dependent: :destroy, inverse_of: :departure_airport
    has_many :arriving_flights, class_name: :Flight, foreign_key: :arrival_airport_id, dependent: :destroy, inverse_of: :arrival_airport
end
