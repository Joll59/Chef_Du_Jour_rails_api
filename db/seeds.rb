User.create(first_name:  "Josh", last_name: "Pann", email: "josh.pann@gmail.com", password: "1234", phone_number: "555-555-5555", street1: "42 Delancey", street2: "Apt 1c", city: "New York", state: "NY", zipcode: "10002", chef_biography: "Josh Pann (born June 25, 1956) is an American chef, author, and television personality. He is a 1978 graduate of the Culinary Institute of America and a veteran of numerous professional kitchens, including many years as executive chef at Brasserie Les Halles. Although Pann is no longer employed as a chef, he maintains a relationship with Les Halles in New York. He became widely known for his 2000 book Kitchen Confidential: Adventures in the Culinary Underbelly. His first food and world-travel television show was A Cook's Tour, which ran for 35 episodes on the Food Network from 2002 through 2003. In 2005 he began hosting the Travel Channel's culinary and cultural adventure programs Anthony Bourdain: No Reservations (2005–2012) and The Layover (2011–2013). In 2013, he switched to CNN to host Anthony Bourdain: Parts Unknown.", instagram: "joshpancooking", personal_website: "www.anthonybourdain.net")

User.create(first_name: "Guy", last_name: "Fieri", email: "info@guyfieri.com", password: "1234", phone_number: "444-444-4444", street1: "475 Allen St.", street2: "Apt 2b", city: "New York", state: "NY", zipcode: "10003", chef_biography: "I'm an American restaurateur, author, game show host, and television personality. I co-own three restaurants in California. I'm known for his television series on the Food Network. By mid-2010, the Food Network had made me the face of the network In 2010, The New York Times reported that I brought an element of rowdy, mass-market culture to American food television, and that my prime-time shows attract more male viewers than any others on the network", instagram:"guyfieri", personal_website: "www.guyfieri.com/")
User.create(first_name: "Adam", last_name: "Richman", email: "adam@theadamrichman.com", password: "1234", phone_number: "333-333-3333", street1: "11 Broadway", street2: "Floor 2", city: "New York", state: "NY", zipcode: "10003", chef_biography: "I am an American actor and television personality. I've hosted various dining and eating-challenge programs on the Travel Channel.", instagram:"adamrichman", personal_website:"http://www.theadamrichman.com/" )

User.create(first_name: "Gordon", last_name: "Ramsay", email: "kim@gmail.com", password: "1234", phone_number: "222-222-2222", street1: "stanton", street2: "apt 8f", city: "New York", state: "NY", zipcode: "10005", chef_biography: "generalenquiries@gordonramsay.com", instagram: "gordongram", personal_website: "www.gordonramsay.com")

User.create(first_name: "Rob", last_name: "Hitt", email: "robhitt@gmail.com", password: "1234", phone_number: "732-682-4952", street1: "214 N. 11th St.", street2: "Apt 3V", city: "Brooklyn", state: "NY", zipcode: "11211", chef_biography: "I'm the culinary king, graduated Harvard culinary school with my PH-Delicious", instagram:"robhitt", personal_website:"www.robhitt.com")


# DiningExperience data
#Created by User 1 (Josh)
DiningExperience.create(title: "Dinner in Tuscany", description: "Enjoy a 4-course Tuscan meal in a Florentine house Get an at home experience. Relax with your hospitable local chef and njoy quality home-cooked food in a friendly environment. Learn about Tuscan cuisine and share foodie tips with like-minded people in your group Start your meal with an aperitif and end with coffee Small-group experience with a maximum of 12 people ensures a more intimate atmosphere.", price: 100, length: 2, user_id: 1)
DiningExperience.create(title: "Romantic Date Night", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non diam tristique, sodales ante non, auctor dui. Suspendisse nulla tortor.", price: 200, length: 3, user_id: 1)
#Created by User 2 (Bob)
DiningExperience.create(title: "Seafood for Two", description: "This is a great alternative to the standard salmon patty recipe using couscous, spinach, and cumin for an exotic flavor.  Cooked by yours truly bc when we see food, we eat it.", price: 50, length: 1, user_id: 2)
DiningExperience.create(title: "Desert Feast for Two", description: "Enjoy the on fire Baked Alaska along with Thin Mints", price: 50, length: 4, user_id: 5)
DiningExperience.create(title: "Pizza Party", description: "Home Made (not quite) brick oven pizza with all the toppings", price: 35, length: 3, user_id: 5)

#Reservations data
Reservation.create(dining_experience_id: 1, user_id: 3, date: Date.new(2017,2,20))
Reservation.create(dining_experience_id: 2, user_id: 3, date: Date.new(2017,2,21))
Reservation.create(dining_experience_id: 2, user_id: 2, date: Date.new(2017,2,23))
Reservation.create(dining_experience_id: 3, user_id: 1, date: Date.new(2017,2,25))
Reservation.create(dining_experience_id: 3, user_id: 3, date: Date.new(2017,2,24))
Reservation.create(dining_experience_id: 4, user_id: 5, date: Date.new(2017,2,24))
Reservation.create(dining_experience_id: 5, user_id: 5, date: Date.new(2017,2,24))

SignatureDish.create(dining_experience_id: 5, image_url: "http://bit.ly/2m5onzZ") #pizza
SignatureDish.create(dining_experience_id: 4, image_url: "http://bit.ly/2kIWsp8") #baked alaska
SignatureDish.create(dining_experience_id: 3, image_url: "http://bit.ly/2mj2VmX") #seafood
SignatureDish.create(dining_experience_id: 2, image_url: "http://bit.ly/2m5nya8") #sexy wine
SignatureDish.create(dining_experience_id: 1, image_url: "http://bit.ly/2mj7zkM") #tuscony
