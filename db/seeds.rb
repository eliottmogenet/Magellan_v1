# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
req1 = Req.new(title: "Senior Ruby Backend engineer")
req1.save!
req2 = Req.new(title: "Javascript frontend")
req2.save!
req3 = Req.new(title: "Data scientist")
req3.save!


candidate1 = Candidate.new(first_name: "Nicolas", last_name: "Dupont", location: "Atlanta(🇺🇸)", job: "Ruby engineer")
candidate1.save!
candidate2 = Candidate.new(first_name: "Mat", last_name: "Baker", location: "Rio de Janeiro(🇧🇷)", job: "Backend engineer")
candidate2.save!

