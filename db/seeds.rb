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

my_cowork_1 = Cowork.new(city: "San-Francisco", capacity: 5)
user_1 = User.create(username: "Elo", email: "elo@gmail.com", password: "123456")
my_cowork_1.user = user_1
urls_1 =[
'https://s-media-cache-ak0.pinimg.com/564x/8c/48/c7/8c48c74f0160f3d7591ba069acf75b87.jpg',
'https://s-media-cache-ak0.pinimg.com/564x/b8/aa/b2/b8aab2302735ebfcb9e5aa9bd9c85a4b.jpg']
my_cowork_1.photo_urls = urls_1
my_cowork_1.save

puts "Création cowork2"

my_cowork_2 = Cowork.new(city: "Byron-Bay", capacity: 5)
user_2 = User.create(username: "Roselyne", email: "roselyne@gmail.com", password: "123456")
my_cowork_2.user = user_2
urls_2 =[
'https://s-media-cache-ak0.pinimg.com/564x/41/4c/72/414c721abf0c98b0687cf22abf9d33c7.jpg',
'https://s-media-cache-ak0.pinimg.com/564x/96/d5/e6/96d5e60417f8dc3112c39e48a18454a9.jpg']
my_cowork_2.photo_urls = urls_2
my_cowork_2.save

# my_cowork_3 = Cowork.new(city: "Mykonos", capacity: 5)
# user_3 = User.create(username: "Robby", email: "rob@gmail.com", password: "123456")
# my_cowork_3.user = user_3
# urls_3 =[
# 'https://s-media-cache-ak0.pinimg.com/564x/b2/34/d2/b234d29c9e67b9e0e7a476f8f0cc833f.jpg',
# 'https://i.pinimg.com/564x/95/57/ff/9557ff153d7039a715c0a30aa857ab22.jpg
# ']
# my_cowork_3.photo_urls = urls_3
# my_cowork_3.save

# puts "Création cowork4"

# my_cowork_4 = Cowork.new(city: "NY", capacity: 5)
# my_cowork_4.user = user_2
# urls_4 =[
# 'https://s-media-cache-ak0.pinimg.com/564x/b2/34/d2/b234d29c9e67b9e0e7a476f8f0cc833f.jpg',
# 'https://s-media-cache-ak0.pinimg.com/564x/af/2b/a4/af2ba4a6c21c7d8e4418047fa04a5fd9.jpg
# ']
# my_cowork_4.photo_urls = urls_4
# my_cowork_4.save

# puts "Création cowork5"
# my_cowork_5 = Cowork.new(city: "RIO", capacity: 5)
# my_cowork_5.user = user_1
# urls_5 =[
# 'http://www.amenagementdesign.com/wp-content/uploads/2014/03/amenagement-decoration-openspace-03.jpg',
# 'https://s-media-cache-ak0.pinimg.com/564x/c4/cf/29/c4cf29d1e4e7ee7ef5902208b2644da4.jpg
# ']
# my_cowork_5.photo_urls = urls_5
# my_cowork_5.save

puts "Création cowork6"
my_cowork_6 = Cowork.new(city: "La Havane", capacity: 5)
my_cowork_6.user = user_2
urls_6 =[
'https://s-media-cache-ak0.pinimg.com/564x/5e/d4/b1/5ed4b1dfc8094b1fa72304bca7a5b18c.jpg',
'http://www.cuba-en-liberte.com/files/2016/08/voiture-americaine-rue-lahavane.jpg']
my_cowork_6.photo_urls = urls_6
my_cowork_6.save




