class Flight < ApplicationRecord
  include Filterable

  belongs_to :departure_airport,
             class_name: "Airport",
             inverse_of: :departure_flights
  belongs_to :arrival_airport,
             class_name: "Airport",
             inverse_of: :arrival_flights
  has_many :bookings, inverse_of: :flight

  scope :with_departure_airport_id, -> (airport_id) do
    where(departure_airport_id: airport_id)
  end
  scope :with_arrival_airport_id, -> (airport_id) do
    where(arrival_airport_id: airport_id)
  end
  scope :with_dep_time, -> (dep_time) do
    where(dep_time: departure_time...(dep_time + 1.day))
  end

  def dep_time_ymd
    self[:dep_time].strftime("%Y-%m-%d")
  end
end
