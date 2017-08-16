# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Début destruction booking"
Booking.destroy_all
puts "Début destruction cowork"
Cowork.destroy_all
puts "Début destruction user"
User.destroy_all


puts "Début création cowork"

my_cowork_1 = Cowork.new(city: "San-Francisco", capacity: 10, price: 255, description: "Beautiful flat in SF heart")
user_1 = User.create(username: "Elo", email: "elo@gmail.com", password: "123456")
my_cowork_1.user = user_1
urls_1 =[
'https://s-media-cache-ak0.pinimg.com/564x/8c/48/c7/8c48c74f0160f3d7591ba069acf75b87.jpg',
'https://s-media-cache-ak0.pinimg.com/564x/b8/aa/b2/b8aab2302735ebfcb9e5aa9bd9c85a4b.jpg']
my_cowork_1.photo_urls = urls_1
my_cowork_1.save

puts "Création cowork2"

my_cowork_2 = Cowork.new(city: "Byron-Bay", capacity: 8, price: 300, description: "Awesome place to work !")
user_2 = User.create(username: "Roselyne", email: "roselyne@gmail.com", password: "123456")
my_cowork_2.user = user_2
urls_2 =[
'https://s-media-cache-ak0.pinimg.com/564x/41/4c/72/414c721abf0c98b0687cf22abf9d33c7.jpg',
'https://s-media-cache-ak0.pinimg.com/564x/96/d5/e6/96d5e60417f8dc3112c39e48a18454a9.jpg']
my_cowork_2.photo_urls = urls_2
my_cowork_2.save

puts "Création cowork3"
my_cowork_3 = Cowork.new(city: "Paris", capacity: 3, price: 278, description: "Work hard, play hard")
user_3 = User.create(username: "Robby", email: "rob@gmail.com", password: "123456")
my_cowork_3.user = user_3
urls_3 =['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWjlmxtTp7UyOf0HWCTvs-TWxeZn4m-Upteh33Q04TIKh9mW4tPA
', 'http://www.parisattitude.com/images/monuments.jpg']
my_cowork_3.photo_urls = urls_3
my_cowork_3.save

puts "Création cowork4"

my_cowork_4 = Cowork.new(city: "NY", capacity: 9, price: 340, description: "Calm and full equiped place in NY")
user_4 = User.create(username: "Fabi", email: "fabi@gmail.com", password: "123456")
my_cowork_4.user = user_4
urls_4 =['http://luxport.s3.amazonaws.com/97377/221%2BWest%2B77th%2BStreet%2BPh%2BNew%2BYork%2BNY%2BUSA%2B444012_002_H.jpg',
'https://62b44a55c8f3a87440df-45c7b4d5aac2f388172e587008aaac69.ssl.cf2.rackcdn.com/event-536-1470870017-ny-power-women-large.jpg']
my_cowork_4.photo_urls = urls_4
my_cowork_4.save

puts "Création cowork5"
my_cowork_5 = Cowork.new(city: "Sao Paulo", capacity: 5, price: 180, description: "10 min from Sao Paulo center, quiet and cool workplace :)")
user_5 = User.create(username: "Gil", email: "gil@gmail.com", password: "123456")
my_cowork_5.user = user_5
urls_5 =[
'https://cdn.vox-cdn.com/uploads/chorus_asset/file/6862533/MLA-house-jacobsen-arquitectura-sao-paulo-designboom-02.0.jpg',
'http://wp.ied.it/iededu/wp-content/uploads/sites/5/2015/04/brasile_banner_dx.jpg']
my_cowork_5.photo_urls = urls_5
my_cowork_5.save

puts "Création cowork6"
my_cowork_6 = Cowork.new(city: "La Havane", capacity: 13, price: 350, description: "Come work and enjoy with us!")
user_6 = User.create(username: "Tatiana", email: "tata@gmail.com", password: "123456")
my_cowork_6.user = user_6
urls_6 =[
'https://s-media-cache-ak0.pinimg.com/564x/5e/d4/b1/5ed4b1dfc8094b1fa72304bca7a5b18c.jpg',
'http://www.cuba-en-liberte.com/files/2016/08/voiture-americaine-rue-lahavane.jpg']
my_cowork_6.photo_urls = urls_6
my_cowork_6.save


puts "Création cowork7"
my_cowork_7 = Cowork.new(city: "Saint-Malo", capacity: 6, price: 300, description: "Lovely appartment, far from city's noise")
user_7 = User.create(username: "Eddy", email: "ed@gmail.com", password: "123456")
my_cowork_7.user = user_7
urls_7 =[
'https://www.lavillehuchet.com/medium/W1siZiIsIjIwMTYvMTIvMTkvMW93bTE0ZmRhNF92aWxsZV9odWNoZXRfbW9iaWxlX2hvbWVzX3N0YW5kYXJkXzA0LmpwZyJdXQ/ville-huchet-mobile-homes-standard-04.jpg?sha=a1a0b8d1e4813acf',
'http://www.tourismebretagne.com/var/crtbre/storage/images/media/images/decouvrir/emblematiques/saint-malo-remparts/plage-du-sillon-grande-maree-saint-malo/10052883-1-fre-FR/plage-du-sillon-grande-maree-saint-malo_large_rwd.jpg']
my_cowork_7.photo_urls = urls_7
my_cowork_7.save

puts "Création cowork8"
my_cowork_8 = Cowork.new(city: "Marseille", capacity: 13, price: 280, description: "Nice home, near the Bonnemère")
user_8 = User.create(username: "Audrey", email: "audrey@gmail.com", password: "123456")
my_cowork_8.user = user_8
urls_8 =[
'http://www.yooko.fr/wp-content/uploads/2012/04/prado12.jpg',
'http://www.marseilletourisme.fr/wp-content/uploads/2016/10/marseilleartistes.jpg']
my_cowork_8.photo_urls = urls_8
my_cowork_8.save

puts "Création cowork9"
my_cowork_9 = Cowork.new(city: "Toulouse", capacity: 15, price: 250, description: "Beautiful place with wifi, and pool!")
user_9 = User.create(username: "Mathieu", email: "mat@gmail.com", password: "123456")
my_cowork_9.user = user_9
urls_9 =[
'http://yulaside.com/wp-content/uploads/2017/06/maison-darchitecte-flottante-au-dessus-de-leau-a-tel-aviv-interieur-maison-contemporaine-architecte.jpg',
'https://fr.aegeanair.com/-/media/destinations/toulouse/toulouse-traveller_2.jpg?w=1164&centercrop=1&h=532&usecustomfunctions=1&la=fr&hash=BE8904045B7A8E54AD305CE20CFB75C12D66751D']
my_cowork_9.photo_urls = urls_9
my_cowork_9.save

puts "Création cowork10"
my_cowork_10 = Cowork.new(city: "Berlin", capacity: 10, price: 220, description: "In the best Berlin's area")
user_10 = User.create(username: "Elina", email: "Elina@gmail.com", password: "123456")
my_cowork_10.user = user_10
urls_10 =[
'http://www.amenagementdesign.com/wp-content/uploads/2016/01/interieur-sombre-vintage.jpg',
'https://www.visitberlin.de/system/files/styles/visitberlin_teaser_full_width_visitberlin_mobile_1x/private/image/iStock_000074120341_Double_DL_PPT_0.jpg?itok=tD4ERppn']
my_cowork_10.photo_urls = urls_10
my_cowork_10.save

puts "Création cowork11"
my_cowork_11 = Cowork.new(city: "Amsterdam", capacity: 7, price: 280, description: "Best place to work in Amsterdam")
user_11 = User.create(username: "Eric", email: "eric@gmail.com", password: "123456")
my_cowork_11.user = user_11
urls_11 =[
'https://conseilsdeco.files.wordpress.com/2016/04/conseilsdeco-maison-industriel-bureau-amsterdam-pays-bas-studio-design-tank-architecture-interieur-decoration-deco-astuces-teo-krijgsman-renovation-02.jpg?w=620',
'https://www.cariboo.co/uploads/cover-pictures/cover450.jpeg']
my_cowork_11.photo_urls = urls_11
my_cowork_11.save

puts "Création cowork12"
my_cowork_12 = Cowork.new(city: "Naples", capacity: 11, price: 230, description: "Peacefull place")
user_12 = User.create(username: "Ricardo", email: "ricardo@gmail.com", password: "123456")
my_cowork_12.user = user_12
urls_12 =[
'http://s2.lemde.fr/image/2015/07/02/644x0/4667231_6_652d_installe-dans-un-immense-appartement-du_b6e3fd05007e77053188a36d97798919.jpg',
'https://cache-graphicslib.viator.com/graphicslib/thumbs360x240/20455/SITours/private-shore-excursion-from-naples-to-pompeii-sorrento-and-amalfi-in-naples-322040.jpg']
my_cowork_12.photo_urls = urls_12
my_cowork_12.save

puts "Création coworker 1"
coworker_1 = User.create(username: "Lydia", email: "lyd@gmail.com", password: "123456")
coworker_1.bookings = [Booking.create(checkin: Date.today, checkout: Date.today+3, user_id: coworker_1.id, cowork_id: my_cowork_1.id), Booking.create(checkin: Date.today+10, checkout: Date.today+15, user_id: coworker_1.id, cowork_id: my_cowork_2.id)]


puts "Création coworker 2"
coworker_2 = User.create(username: "Tom", email: "tom@gmail.com", password: "123456")
coworker_2.bookings = [Booking.create(checkin: Date.today+20, checkout: Date.today+28, user_id: coworker_2.id, cowork_id: my_cowork_2.id), Booking.create(checkin: Date.today+4, checkout: Date.today+10, user_id: coworker_1.id, cowork_id: my_cowork_5.id)]
