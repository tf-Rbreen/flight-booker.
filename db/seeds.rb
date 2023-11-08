# Flight has an Airport foreign key, so order matters here.
Airport.delete_all
Flight.delete_all

  codes = %w[NYC ABJ LAX JFK MIA DC CAL ATL]
  codes.each do |abbr|
    Airport.create(code: "#{abbr}")
  end

  airports = Airport.all.to_a.permutation(2).to_a
  airports.sample(5).each do |id|
    departure = Faker::Time.between(from: DateTime.now, to: 7.days.from_now, format: :short) #=> "2018/10/15 10:48"
    arrival = Faker::Time.between(from: departure, to: DateTime.parse(departure) + 17.hours, format: :short)
    Flight.create(departure_airport: id[0], arrival_airport: id[1], arrival_time: arrival, departure_time: departure)
  end
