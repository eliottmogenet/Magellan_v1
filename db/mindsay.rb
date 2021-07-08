require 'open-uri'

Company.destroy_all
User.destroy_all
Req.destroy_all
Candidate.destroy_all
TechHub.destroy_all
Country.destroy_all
Challenge.destroy_all
Stack.destroy_all
Message.destroy_all

p "creating company"

company1 = Company.new(name: "Mindsay", industry: "SAAS", website: "https://www.youtube.com/embed/XwSkB2VjrnM", languages: ["Vue.js", "Python", "Ruby"], description: "We're on a mission to build the best platform in the world for engineers to understand and scale their systems, applications, and teams.  We operate at high scale—trillions of data points per day—providing always-on alerting, metrics visualization, logs, and application tracing for tens of thousands of companies. Our engineering culture values pragmatism, honesty, and simplicity to solve hard problems the right way.", team: "The Revenue Data Engineering Teams designs, builds and runs the data pipelines and helper systems to accurately and timely manner quantify our customers’ usage across all Datadog products. This team is at the leading edge of any new product we release.", job_description: "As a Data Engineer within the Revenue & Growth group, you will work with Spark and big data tooling to build highly reliable, verifiably-accurate data processing pipelines for a large scale mission-critical process. This team ingests the full firehose of data we receive each day - literally trillions of data points and petabytes of data.")
company1.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/mindsay.png')), filename: 'mindsay.png')
#file = URI.open("[https://www.youtube.com/watch?v=880BUSam7nc](https://www.youtube.com/watch?v=880BUSam7nc)")
#company1.video.attach(io: file, filename: 'video')
company1.save!

p "creating the req"

req1 = Req.new(title: "Frontend (Vue.js) ", company: "Mindsay", languages: ["Vue.js", "Python", "Ruby"], tools:  ["SPA Frameworks"], company_description: "We're on a mission to build the best platform in the world for engineers to understand and scale their systems, applications, and teams.  We operate at high scale—trillions of data points per day—providing always-on alerting, metrics visualization, logs, and application tracing for tens of thousands of companies. Our engineering culture values pragmatism, honesty, and simplicity to solve hard problems the right way.")
req1.save!

p "creating users"
user1 = User.new(first_name: "Camille", last_name: "Orain", job: "Tech recruiter", location: "Paris - France", email: "seb@lewagon.org", password: "seb@lewagon.org")
user1.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/alison.png')), filename: 'alison.png')
user1.save!
user2 = User.new(first_name: "Cecile", last_name: "Soullier", job: "TA Manager", location: "Paris - France", email: "Jon@lewagon.org", password: "Jon@lewagon.org")
user2.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/cecile.png')), filename: 'cecile.png')
user2.save!
user3 = User.new(first_name: "John", last_name: "Hasting", job: "Head of Data", location: "New York City - USA", email: "John@lewagon.org", password: "John@lewagon.org")
user3.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/ben.png')), filename: 'ben.png')
user3.save!
#user4 = User.new(first_name: "Justin", last_name: "Banner", job: "Data scientist lead", location: "Lima - Peru", email: "[Jo@lewagon.org](mailto:Jo@lewagon.org)", password: "[Jo@lewagon.org](mailto:Jo@lewagon.org)")
#user4.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/john.png')), filename: 'john.png')
#user4.save!

p "creating countries"

france = Country.new(name: "France")
france.save!

p "creating candidates"

candidate1 = france.candidates.create(first_name: "Anna", last_name: "Sanchez", location: "Barcelona(🇪🇸)", job: "Frontend software engineer", overlap: "≃ 7 hours" , healthcare: "Public healthcare (fixed fee)", other_benefits: "PTO | Marternity leave | 4 weeks annual vacation", area_median: "$60K", notice_period: "2 months",  timezone: "BST GMT-3", job_status: "Active", status: "New", next_steps: "I want to work in larger teams of experienced people, ready to support themselves and learn together, where processes are already in place. ", next_job: "Data scientist, Data engineer, ML/Data engineer", expected_wage: 55, softskills: "Able to learn fast in operating roles",practice: "Scrum, CL/CLI, Npm",  industry: "Saas", languages: ["Vue.js", "React"], tools: ["Storybook", "Cypress", "JQuery"], selected: false)
candidate1.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/candidate1.jpg')), filename: 'candidate1.jpg')
candidate1.map.attach(io: File.open(File.join(Rails.root,'app/assets/images/134.png')), filename: '134.png')
candidate1.save!
candidate2 = france.candidates.create(first_name: "Kevin", last_name: "Baker", location: "Montreal (🇨🇦)", job: "Vue.js engineer", healthcare: "Canadian healthcare plans", other_benefits: "Canadian Pension Plan", overlap: "≃ 8 hours", area_median: "$60K", notice_period: "2 weeks",  timezone: "EDT GMT-4", job_status: "Passive", status: "autre2", next_steps: "I would like to get more involved in the leadership part of a team of software enginers", next_job:"Data scientist, Data engineer, ML/Data engineer", expected_wage: 57, softskills: "Managed and integrated a small team of 2 ruby backend engineers", practice: "Scrum, dev-Ops mindset with TDD", industry: "Saas", languages: ["Vue.js", "Python"], tools: ["PostgreSQL", "Docker"], selected: false)
candidate2.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/candidate2.jpg')), filename: 'candidate2.jpg')
candidate2.map.attach(io: File.open(File.join(Rails.root,'app/assets/images/map_candidate2.png')), filename: 'map_candidate2.png')
candidate2.save!
candidate3 = france.candidates.create(first_name: "Aurore", last_name: "Chan", location: "Vancouver (🇨🇦)", job: "Leed frontend engineer", healthcare: "Canadian healthcare plans", other_benefits: "Canadian Pension Plan", overlap: "≃ 6 hours",  area_median: "$60K", notice_period: "2 weeks",  timezone: "PDT GMT-7", job_status: "Passive", status: "autre3", next_steps: "I want to work more on ML and deep learning features in the future", expected_wage: 115, next_job:"Data scientist, Data engineer, ML/Data engineer", softskills: "Operated in a team of experienced datascientists", industry: "Security", practice: "Clean code, Scrum", languages: ["Vue.js", "Ruby"], tools: ["Circle CI","AWS", "Storybook"], selected: false)
candidate3.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/candidate3.jpg')), filename: 'candidate3.jpg')
candidate3.map.attach(io: File.open(File.join(Rails.root,'app/assets/images/133.png')), filename: '133.png')
candidate3.save!
candidate4 = france.candidates.create(first_name: "Mark", last_name: "Lundberg", location: "Amsterdam (🇳🇱)", job: "Frontend engineer", healthcare: "Public healthcare (27% fee)", other_benefits: "PTO (first 15 days) | Marternity leave (120 days) | 13th salary ", overlap: "≃ 7 hours",  area_median: "$40K", notice_period: "One month",  timezone: "BST GMT-3", job_status: "Active", status: "autre4", next_steps: "I want to join a create team of data engineer to continue processing datas", next_job:"Data scientist, Data engineer, ML/Data engineer", expected_wage: 47, softskills: "Managed a team of 5 people (datascientists)", practice: "TDD", industry: "Saas", languages: ["Vue.js", "Node.js"], tools: ["PostgreSQL", "MongoDB", "Docker"],  selected: false)
candidate4.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/candidate4.jpg')), filename: 'candidate4.jpg')
candidate4.map.attach(io: File.open(File.join(Rails.root,'app/assets/images/135.png')), filename: '135.png')
candidate4.save!

p "creating challenges"

p "candidate1 challenges"

challenge1 = candidate1.challenges.create(description: "Managed unit testing and integration using React and React testing library and Cypress at Osana Salud")
challenge1.save!
challenge2 = candidate1.challenges.create(description: "Redesigned the entire frontend app from static HTML/CSS to dynamic Vue.js at Karvi")
challenge2.save!
challenge3 = candidate1.challenges.create(description: "Demo of the new features twice a month to all employees at Karvi")
challenge3.save!

p "candidate2 challenges"

challenge4 = candidate2.challenges.create(description: "Implementation of unit tests for React components using the Jest framework and other utilities(Enzyme, Chai, Sinon ...)")
challenge4.save!
challenge5 = candidate2.challenges.create(description: "Created an MVP with frontend framework Vue.js and Vuex and Nuxt Js from scratch ")
challenge5.save!
challenge6 = candidate2.challenges.create(description: "Deploying a pre production environment with AWS Cloudfront, Fargate, S3, Docker et Github Action")
challenge6.save!

p "candidate3 challenges"

challenge7 = candidate3.challenges.create(description: "Writing cross-browser compliant HTML, CSS & JavaScript")
challenge7.save!
challenge8 = candidate3.challenges.create(description: "Design System with StoryBook")
challenge8.save!
challenge9 = candidate3.challenges.create(description: "Build the entire backend of the app and deployed it using Ruby on rails and Heroku")
challenge9.save!

p "candidate4 challenges"

challenge10 = candidate4.challenges.create(description: "Development of a reinsurance management software in a 4-5 developers team using a React/GraphQL/Symfony stack.")
challenge10.save!
challenge11 = candidate4.challenges.create(description: "Setting up of a web server using Node.js and Express.js")
challenge11.save!
challenge12 = candidate4.challenges.create(description: "Managed unit testing and integration using React and React testing library and Cypress")
challenge12.save!

p "creating tech hubs"

us = TechHub.new(name: "Westen Europe")
us.save!
latam = TechHub.new(name: "Latin America")
latam.save!
canada = TechHub.new(name: "Canada")
canada.save!

p "creating chatrooms"
chatroom1 = candidate1.chatrooms.create(name: "chatroom1")
chatroom1.save!
chatroom2 = candidate2.chatrooms.create(name: "chatroom2")
chatroom2.save!
chatroom3 = candidate3.chatrooms.create(name: "chatroom3")
chatroom3.save!
chatroom4 = candidate4.chatrooms.create(name: "chatroom4")
chatroom4.save!

p "creating jobs"

p "candidate1 job"

job1 = candidate1.jobs.create(title: 'Data scientist', company_name: "Osana Salud", years: "2019-2021 (2 years)")
job1.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/osana.png')), filename: 'osana.png')
job1.save!
job2 = candidate1.jobs.create(title: 'Data analyst', company_name: "Karvi", years: "2018-2019 (1 year)" )
job2.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/karvi-logo.png')), filename: 'karvi-logo.png')
job2.save!

p "candidate2 job"

job3 = candidate2.jobs.create(title: 'Data engineer', company_name: "Kaloom", years: "2016-2021 (5 years)")
job3.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/kaloom.png')), filename: 'kaloom.png')
job3.save!

p "candidate3 job"

job5 = candidate3.jobs.create(title: 'ML engineer', company_name: "Google", years: "2016-2021 (5 years)")
job5.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/google.jpeg')), filename: 'google.jpeg')
job5.save!
job6 = candidate3.jobs.create(title: 'Data analyst', company_name: "Stripe", years: "2014-2016 (2 years)" )
job6.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/stripe.png')), filename: 'stripe.png')
job6.save!

p "candidate4s job"

job7 = candidate4.jobs.create(title: 'Data engineer', company_name: "Rappi", years: "2018-2021 (3 years)")
job7.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/rappi.png')), filename: 'rappi.png')
job7.save!
job8 = candidate4.jobs.create(title: 'Data scientist', company_name: "Gympass", years: "2016-2018 (2 years)")
job8.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/gympass.png')), filename: 'gympass.png')
job8.save!

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
