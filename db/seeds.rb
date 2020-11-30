# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Day.create({
    sunrise: "now",
    sunset: "there",
    day_length: "Never long enough",
    solar_noon: "rarely noon"
})

Day.create({
    sunrise: "Then",
    sunset: "Here",
    day_length: "Sometimes long enough",
    solar_noon: "Exactly noon"
})
