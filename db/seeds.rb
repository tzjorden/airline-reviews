# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airline.create([
  { 
    name: "United Airlines",
    image: "https://open-flights.s3.amazonaws.com/United-Airlines.png"
  }, 
  { 
    name: "Southwest",
    image: "https://open-flights.s3.amazonaws.com/Southwest-Airlines.png"
  },
  { 
    name: "Delta",
    image: "https://open-flights.s3.amazonaws.com/Delta.png" 
  }, 
  { 
    name: "Alaska Airlines",
    image: "https://open-flights.s3.amazonaws.com/Alaska-Airlines.png" 
  }, 
  { 
    name: "JetBlue",
    image: "https://open-flights.s3.amazonaws.com/JetBlue.png" 
  }, 
  { 
    name: "American Airlines",
    image: "https://open-flights.s3.amazonaws.com/American-Airlines.png" 
  }
])


Review.create([
    {
        title: "Greate Airline",
        description: "Pleasant experience",
        score: 5,
        airline: Airline.first
    },
    {
        title: "Greate Service",
        description: "Awesome customer service",
        score: 4,
        airline: Airline.first
    }
])
