# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Attendee.destroy_all
Event.destroy_all
User.destroy_all

u1 = User.new
u1.username = "DT"
u1.email = "dt@ga.co"
u1.password = "pudding"
u1.first_name = "Daniel"
u1.last_name = "Tsui"
u1.gender = "male"
u1.save

u2 = User.new
u2.username = "MJ"
u2.email = "matthew.johnson@generalassemb.ly"
u2.password = "pudding"
u2.first_name = "Matthew"
u2.last_name = "Johnson"
u2.gender = "male"
u2.save

u3 = User.new
u3.username = "HMAN"
u3.email = "harry@ga.co"
u3.password = "pudding"
u3.first_name = "Harry"
u3.gender = "male"
u3.save

u4 = User.new
u4.username = "VB_Guru"
u4.email = "kasun@ga.co"
u4.password = "pudding"
u4.first_name = "Kasun"
u4.last_name = "Maldeni"
u4.save

e1 = Event.new
e1.user = u1
e1.title = "Cake Pudding Eating Contest"
e1.details = "There isn't enough cake pudding in my life, so this is a competition for eating cake pudding."
e1.start_time = "10am 16 December 2016"
e1.finish_time = "9pm"
e1.where = "Classroom 1, GA Melbourne Campus"
e1.group_max = "25"
e1.group_min = "2"
e1.save

e2 = Event.new
e2.user = u2
e2.title = "Last Hoorah Lunch"
e2.details = "Because this is a lunch for web developers, I picked the restaurant with the worst online menu in Melbourne."
e2.start_time = "1pm at 16 December 2016"
e2.finish_time = "3pm"
e2.where = "GLOBE ALLEY, MELBOURNE"
e2.group_max = "25"
e2.group_min = "10"
e2.link = "http://belleville-melbourne.com/"
e2.save

e3 = Event.new
e3.user = u2
e3.title = "Table Tennis Finals"
e3.details = "We’ll be doing final play-offs. Top 8 get to play. Winner wins a beautiful bottle of Champagne."
e3.start_time = "16 December 2016 at 4pm"
e3.finish_time = "4:30pm"
e3.age_min = "18"
e3.where = "GA Melbourne Campus"
e3.group_max = "8"
e3.group_min = "2"
e3.save

e4 = Event.new
e4.user = u2
e4.title = "Graduation/Christmas Party"
e4.details = "This is an event where graduates can schmooze with past graduates and practice not freaking out about discussing their code before the meet and greet event in January."
e4.start_time = "6pm 16 December 2016"
e4.finish_time = "10pm"
e4.where = "GA Melbourne Campus"
e4.group_max = "250"
e4.group_min = "21"
e4.save

e5 = Event.new
e5.user = u3
e5.title = "Flat Earth Documentary Night"
e5.details = "Because the Earth is flat and most people believe the government's lies, I am hosting a documentary night to show people the truth that the government doesn't want us to know."
e5.start_time = "6pm at 17 December 2016"
e5.finish_time = "6:05pm at 17 December 2016"
e5.gender = "female"
e5.where = "Village Cinemas - City"
e5.group_max = "10"
e5.group_min = "1"
e5.language = "PHP"
e5.save

Attendee.create(user: u2 , event: e1)
Attendee.create(user: u3, event: e1)
Attendee.create(user: u4, event: e1)
Attendee.create(user: u1 , event: e2)
Attendee.create(user: u3 , event: e2)
Attendee.create(user: u4 , event: e2)
Attendee.create(user: u3, event: e3)
Attendee.create(user: u1 , event: e4)
Attendee.create(user: u3 , event: e4)
Attendee.create(user: u4 , event: e4)
