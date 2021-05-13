# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
puts "."
Article.destroy_all
puts "."

louise = User.create!( email: 'lou@email.com', password: 'azerty', admin: true)
puts "."

lambda = User.create!( email: 'lambda@email.com', password: 'azerty', admin: false)
puts "."

article1 = Article.new( title: 'Panier Noël', content: 'Panier spécial fête de noel', visible: true)
article1_img = URI.open('https://res.cloudinary.com/debeemobv/image/upload/v1620903904/Seeds/plateau-repas-poisson_ef4hfk.jpg')
article1.image.attach(io:article1_img, filename: 'article1.jpg', content_type: 'images.jpg')

article1.save
puts "."