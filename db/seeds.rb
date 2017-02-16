User.create(first_name:  "Josh", last_name: "Pann", email: "josh.pann@gmail.com", password: "1234", phone_number: "555-555-5555", street1: "delancey", street2: "apt 1c", city: "New York", state: "NY", zipcode: "10002", chef_biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer neque diam, porta eu mi ac, gravida semper mi. In aliquam scelerisque dignissim. In iaculis interdum erat, in hendrerit est ultricies vel. Aliquam pulvinar lorem eros, non finibus lacus tempor tempus. Nam accumsan sagittis aliquet. Duis vehicula ligula ligula. Aenean semper.", instagram:"", personal_website:"www.google.com")
User.create(first_name: "Bob", last_name: "Candy", email: "bob.cany@gmail.com", password: "1234", phone_number: "444-444-4444", street1: "allen", street2: "apt 2b", city: "New York", state: "NY", zipcode: "10003", chef_biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi interdum facilisis leo vel auctor. Duis vitae consequat tortor. Donec quis sapien condimentum, imperdiet urna ac, viverra purus. In fermentum pretium ultricies. Curabitur non magna non elit dapibus elementum quis eleifend magna. Nullam et sagittis neque. Nulla auctor erat sed ex.", instagram:"", personal_website: "www.yahoo.com")
User.create(first_name: "Madonna", last_name: "Smith", email: "madonna@gmail.com", password: "1234", phone_number: "333-333-3333", street1: "broadway", street2: "apt 1c", city: "New York", state: "NY", zipcode: "10000", chef_biography: "", instagram:"", personal_website:"" )
User.create(first_name: "Kim", last_name: "West", email: "kim@gmail.com", password: "1234", phone_number: "222-222-2222", street1: "stanton", street2: "apt 8f", city: "New York", state: "NY", zipcode: "10005", chef_biography: "", instagram:"", personal_website:"")


# DiningExperience data
#Created by User 1 (Josh)
DiningExperience.create(title: "Dinner in Tuscany", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ullamcorper, dui in vulputate laoreet, augue lacus sollicitudin sem, in bibendum.", price: 100, length: 2, user_id: 1)
DiningExperience.create(title: "Romantic Date Night", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non diam tristique, sodales ante non, auctor dui. Suspendisse nulla tortor.", price: 200, length: 3, user_id: 1)
#Created by User 2 (Bob)
DiningExperience.create(title: "Seafood for Two", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sagittis nisl eu est luctus tempor. Nulla cursus varius fermentum. Phasellus.", price: 50, length: 1, user_id: 2)

#Reservations data

Reservation.create(dining_experience_id: 1, user_id: 3, date: 02/20/2017)
Reservation.create(dining_experience_id: 2, user_id: 3, date: 02/21/2017)
Reservation.create(dining_experience_id: 2, user_id: 2, date: 02/22/2017)
Reservation.create(dining_experience_id: 3, user_id: 1, date: 02/25/2017)
Reservation.create(dining_experience_id: 3, user_id: 3, date: 02/24/2017)

#mm/dd/yyyy
