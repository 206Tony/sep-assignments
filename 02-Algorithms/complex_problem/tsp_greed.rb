class City
  attr_accessor :name, :visited

  def initialize(name)
    @name = name 
    @visited = false
  end
end

city1 = City.new("Seattle")
city2 = City.new("Chicago")
city3 = City.new("Miami")
city4 = City.new("San Francisco")
city5 = City.new("New York")
cities = [city1, city2, city3, city4, city5]

class Trip 
  attr_accessor :first_city, :second_city, :distance

  def initialize(first_city, second_city, distance)
    @first_city = first_city
    @second_city = second_city
    @distance = distance
  end
end

trip1 = Trip.new(city1, city2, 2064)
trip2 = Trip.new(city1, city3, 3297)
trip3 = Trip.new(city1, city4, 808)
trip4 = Trip.new(city1, city5, 2852)
trip5 = Trip.new(city2, city3, 1377)
trip6 = Trip.new(city2, city4, 2131)
trip7 = Trip.new(city2, city5, 789)
trip8 = Trip.new(city3, city4, 3114)
trip9 = Trip.new(city3, city5, 1279)
trip10 = Trip.new(city4, city5, 2906)
trip11 = Trip.new(city2, city1, 2064)
trip12 = Trip.new(city3, city1, 3297)
trip13 = Trip.new(city4, city1, 808)
trip14 = Trip.new(city5, city1, 2852)
trip15 = Trip.new(city3, city2, 1377)
trip16 = Trip.new(city4, city2, 2131)
trip17 = Trip.new(city5, city2, 789)
trip18 = Trip.new(city4, city3, 3114)
trip19 = Trip.new(city5, city3, 1279)
trip20 = Trip.new(city5, city4, 2906)
trips = [trip1, trip2, trip3, trip4, trip5, trip6, trip7, trip8, trip9, trip10, trip11, trip12, trip13, trip14, trip15, trip16, trip17, trip18, trip19, trip20]

def traveling_salesman(all_cities, current_city, all_trips, best_route=[])
  next_best = nil
  all_trips.each do |trip|
    if trip.first_city.name == current_city.name 
      if next_best == nil && trip.second_city.visited == false
        next_best = trip
      elsif trip.second_city.visited == false && trip.distance < next_best.distance
        next_best = trip
      end
    end
  end
  best_route << next_best
  p "Trip from #{next_best.first_city.name} to #{next_best.second_city.name} is #{next_best.distance} miles."
  current_city.visited = true
  if next_best.first_city.name == current_city.name 
    next_city = next_best.second_city
  else
    next_city = next_best.first_city
  end
  until best_route.length == all_cities.length - 1 
    traveling_salesman(all_cities, next_city, all_trips, best_route)
  end
end

puts traveling_salesman(cities, city1, trips)