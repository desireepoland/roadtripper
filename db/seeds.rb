# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

trips = [
  {name: "San Francisco to Anaheim", description: "Adventure from SF down the coast to Disneyland. Approx 1 week."},
  {name: "Los Angeles to Grand Canyon", description: "About 500 miles."},
  {name: "Las Vegas to Yosemite", description: "From clubbing to camping!"},
  {name: "Another Road Trip", description: "Because reasons."}
]

trips.each do |trip|
  Trip.create trip
end

stops = [
  { name: "Monterey", description: "", trip_id: 1 },
  { name: "San Simeon", description: "", trip_id: 1 },
  { name: "Santa Barbara", description: "", trip_id: 1 },
  { name: "Anaheim", description: "Disney Time!!!!!", trip_id: 1 },
  { name: "Los Angeles", description: "", trip_id: 2 },
  { name: "Joshua Tree National Park", description: "", trip_id: 2 },
  { name: "Lake Havasu City", description: "", trip_id: 2 },
  { name: "Grand Canyon National Park", description: "", trip_id: 2 },
  { name: "Las Vegas", description: "", trip_id: 3 },
  { name: "Death Valley National Park", description: "", trip_id: 3 },
  { name: "Yosemite", description: "", trip_id: 3 },
  { name: "Mangoville", description: "", trip_id: 4 },
  { name: "Papaya Park", description: "", trip_id: 4 },
  { name: "Cantaloupe City", description: "", trip_id: 4 }
]

stops.each do |stop|
  Stop.create stop
end

activities = [
  { name: "Monterey Bay Aquarium", stop_id: 1 },
  { name: "Cannery Row", stop_id: 1 },
  { name: "Hearst Castle Tour", stop_id: 2 },
  { name: "Ocean Kayaking", stop_id: 3 },
  { name: "Lunch at Lilly's Tacos", stop_id: 3 },
  { name: "Hike to Knapp's Castle", stop_id: 3 },
  { name: "Disneyland", stop_id: 4 },
  { name: "California Adventure", stop_id: 4 },
  { name: "LACMA", stop_id: 5 },
  { name: "Griffith Observatory", stop_id: 5 },
  { name: "Venice Beach", stop_id: 5 },
  { name: "Hike", stop_id: 6 },
  { name: "Rock Climb", stop_id: 6 },
  { name: "Boat Ride", stop_id: 7 },
  { name: "Fishing", stop_id: 7 },
  { name: "View London Bridge", stop_id: 7 },
  { name: "Camp", stop_id: 8 },
  { name: "Hike", stop_id: 8 },
  { name: "Sightsee", stop_id: 8 },
  { name: "Gambling", stop_id: 9 },
  { name: "Clubbing", stop_id: 9 },
  { name: "Walk the Strip", stop_id: 9 },
  { name: "Camp Under Stars", stop_id: 10 },
  { name: "Explore Canyons", stop_id: 10 },
  { name: "Visit A Ghost Town", stop_id: 10 },
  { name: "Enjoy Nature", stop_id: 11 },
  { name: "Hike around", stop_id: 11 },
  { name: "Eat a Mango", stop_id: 12 },
  { name: "Visit Mango Museum", stop_id: 12 },
  { name: "Beach Barbecue", stop_id: 13 },
  { name: "Swimming", stop_id: 13 },
  { name: "See a Show", stop_id: 14 },
  { name: "Horseback Ride", stop_id: 14 },
  { name: "Another Activity", stop_id: 14 }
]


activities.each do |activity|
  Activity.create activity
end
