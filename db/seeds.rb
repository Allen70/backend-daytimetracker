# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'byebug'
require 'rest-client'

Day.destroy_all

response = RestClient.get('https://api.sunrise-sunset.org/json?lat=39.7392&lng=104.9903')
parsed_response = JSON.parse(response)

parsed_response.map do |results|
    day = results[1]
    Day.create(sunrise: day['sunrise'], sunset: day['sunset'], day_length: day['day_length'], solar_noon: day['solar_noon'])

end
