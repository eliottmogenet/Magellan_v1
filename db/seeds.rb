# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

Company.destroy_all
User.destroy_all
Req.destroy_all
Candidate.destroy_all
TechHub.destroy_all
Country.destroy_all
Challenge.destroy_all
Stack.destroy_all

p "creating company"

company1 = Company.new(name: "Datadog", industry: "Security", website: "https://www.youtube.com/embed/880BUSam7nc", languages: ["Python", "Scala"], description: "We're on a mission to build the best platform in the world for engineers to understand and scale their systems, applications, and teams.  We operate at high scale—trillions of data points per day—providing always-on alerting, metrics visualization, logs, and application tracing for tens of thousands of companies. Our engineering culture values pragmatism, honesty, and simplicity to solve hard problems the right way.", team: "The Revenue Data Engineering Teams designs, builds and runs the data pipelines and helper systems to accurately and timely manner quantify our customers’ usage across all Datadog products. This team is at the leading edge of any new product we release.", job_description: "As a Data Engineer within the Revenue & Growth group, you will work with Spark and big data tooling to build highly reliable, verifiably-accurate data processing pipelines for a large scale mission-critical process. This team ingests the full firehose of data we receive each day - literally trillions of data points and petabytes of data.")
company1.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/datadog.png')), filename: 'datadog.png')
#file = URI.open("https://www.youtube.com/watch?v=880BUSam7nc")
#company1.video.attach(io: file, filename: 'video')
company1.save!

p "creating users"
user1 = User.new(first_name: "Sebastien", email: "seb@lewagon.org", password: "seb@lewagon.org")
user1.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/ben.png')), filename: 'ben.png')
user1.save!
user2 = User.new(first_name: "John", email: "John@lewagon.org", password: "John@lewagon.org")
user2.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/ben.png')), filename: 'ben.png')
user2.save!

p "creating chatroom"
chatroom1 = Chatroom.create(name: "general")
chatroom1.save!

p "creating reqs"

req1 = Req.new(title: "Ruby Backend engineer", company: "Datadog", languages: ["Python", "Scala"], company_description: "We're on a mission to build the best platform in the world for engineers to understand and scale their systems, applications, and teams.  We operate at high scale—trillions of data points per day—providing always-on alerting, metrics visualization, logs, and application tracing for tens of thousands of companies. Our engineering culture values pragmatism, honesty, and simplicity to solve hard problems the right way.")
req1.save!

p "creating tech hubs"

europe = TechHub.new(name: "Europe")
europe.save!
latam = TechHub.new(name: "Latin America")
latam.save!
canada = TechHub.new(name: "Canada")
canada.save!

p "creating countries"

france = Country.new(name: "France")
france.save!

p "creating candidates"

candidate1 = france.candidates.create(first_name: "Nicolas", last_name: "Dupont", location: "Atlanta(🇺🇸)", job: "Ruby engineer", timezone: "GMT-4", job_status: "Active", status: "New", next_steps: "I want to become an astronaut", expected_wage: 85, softskills: "Driving a car", industry: "Saas", languages: ["Ruby", "Javascript"], selected: false)
candidate1.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/candidate1.jpg')), filename: 'candidate1.jpg')
candidate1.map.attach(io: File.open(File.join(Rails.root,'app/assets/images/map_candidate1.png')), filename: 'map_candidate1.jpg')
candidate1.save!
candidate2 = france.candidates.create(first_name: "Mat", last_name: "Baker", location: "Rio de Janeiro(🇧🇷)", job: "Software architect", timezone: "GMT-3", job_status: "Passive", status: "autre2", next_steps: "I want to become an astronaut", expected_wage: 85, softskills: "Driving a car", industry: "Saas", languages: ["Ruby", "Javascript"], selected: false)
candidate2.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/candidate1.jpg')), filename: 'candidate1.jpg')
candidate2.map.attach(io: File.open(File.join(Rails.root,'app/assets/images/map_candidate1.png')), filename: 'map_candidate1.jpg')
candidate2.save!
candidate3 = france.candidates.create(first_name: "Nail", last_name: "Huntin", location: "Mexico(🇲🇽)", job: "Software architect", timezone: "GMT-3", job_status: "Passive", status: "autre3", next_steps: "I want to become an astronaut", expected_wage: 85, softskills: "Driving a car", industry: "Saas", languages: ["Ruby", "Javascript"], selected: false)
candidate3.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/candidate1.jpg')), filename: 'candidate1.jpg')
candidate3.map.attach(io: File.open(File.join(Rails.root,'app/assets/images/map_candidate1.png')), filename: 'map_candidate1.jpg')
candidate3.save!
candidate4 = france.candidates.create(first_name: "Nail", last_name: "Huntin", location: "Mexico(🇲🇽)", job: "Software architect", timezone: "GMT-3", job_status: "Passive", status: "autre4", next_steps: "I want to become an astronaut", expected_wage: 85, softskills: "Driving a car", industry: "Saas", languages: ["Ruby", "Javascript"], selected: false)
candidate4.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/candidate1.jpg')), filename: 'candidate1.jpg')
candidate4.map.attach(io: File.open(File.join(Rails.root,'app/assets/images/map_candidate1.png')), filename: 'map_candidate1.jpg')
candidate4.save!


p "creating challenges"

challenge1 = candidate1.challenges.create(description: "I know how to swim")
challenge1.save!
challenge2 = candidate1.challenges.create(description: "I know how to drive")
challenge2.save!

#p "creating stacks"

#Stack.create([
  #{ name: 'Ruby', candidate1 },
  #{ name: 'Javascript' },
  #{ name: 'PHP' },
  # etc.
#])
#ruby = Stack.new(name: "Ruby")
#ruby.save!
#javascript = Stack.new(name: "Javascript")
#javascript.save!

#p "creating candidate_stacks"

#candidate_stack1 = candidate1.candidate_stacks.create(stacks: [ruby, javascript])
#candidate_stack1.save!

p "finished"








