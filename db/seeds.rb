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

cities = [
    {
    name: 'New York',
    lat: '40.7128',
    lng: '74.0060'
    },{
    name: 'Los Angeles',
    lat: '40.7128',
    lng: '74.0060'
    },{
    name: 'Denver',
    lat: '39.7392',
    lng: '104.9903'
    },{
    name: 'Seattle',
    lat: '47.6062',
    lng: '122.3321'
    },{
    name: 'Detroit',
    lat: '42.3314',
    lng: '83.0458'
    },{
    name: 'Austin',
    lat: '30.2672',
    lng: '97.7431'
    }
]
cities.map do |city|
    response = RestClient.get("https://api.sunrise-sunset.org/json?lat=#{city[:lat]}&lng=#{city[:lng]}")
        parsed_response = JSON.parse(response)

        parsed_response.map do |results|
        day = results[1]
        Day.create(sunrise: day['sunrise'], sunset: day['sunset'], day_length: day['day_length'], solar_noon: day['solar_noon'], name: city[:name])
end


end
