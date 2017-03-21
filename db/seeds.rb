# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# atlerier roquette
e = Event.find_or_initialize_by({location: 'Atlerier Roquette', date: '4/1'})

e.date = '4/1'
e.time = '6:00 PM'
e.ticket_url = 'https://www.eventbrite.com/e/sunnys-forever-concert-tickets-32824933259?utm-medium=discovery&utm-campaign=social&utm-content=attendeeshare&aff=escb&utm-source=cp&utm-term=listing'
e.location_url = 'https://goo.gl/maps/Fxh4E3SLbb22'
e.details = "Campaign Launch Concert"
e.save

am = Money.find_or_initialize_by({name: 'Amount Raised'})
am.dollar = "500.00"
am.save

#sunnys event
e = Event.find_or_initialize_by({location: "Sunny's Bar", date: '5/1'})
e.time = '6:00 PM'
e.date = '5/1'
e.location_url = 'https://goo.gl/maps/CouXxcmgQ112'
e.details = "Booze Arts art auction!"
e.save

#superfine
e = Event.find_or_initialize_by({location: 'Superfine', date: '3/26'})
e.time = '7:00 PM'
e.date = '3/26'
e.location_url = 'https://goo.gl/maps/WRPYXHrn5ww'
e.details = "Salt will be playing! No cover! 100\% of proceeds from Tito's Moscow Mules and Sixpoint Drafts will go to Sunny's Forever Fund!"
e.save
