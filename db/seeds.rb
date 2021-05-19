
require "faker"


puts "-------------------------------"
puts "Destroying everything"
puts "-------------------------------"


User.destroy_all
puts "."
Article.destroy_all
puts "."
Recipe.destroy_all
puts "."
Gallery.destroy_all
puts "."
Text.destroy_all
puts "."

puts "-------------------------------"
puts "Everything is destroyed"
puts "-------------------------------"

puts "Creating Users"


User.create!( email: 'lou@email.com', password: 'azerty', admin: true)
puts "."

User.create!( email: 'lambda@email.com', password: 'azerty', admin: false)
puts "."

puts "Creating articles"


article1 = Article.new( title: 'Panier Noël', content: Faker::Markdown.sandwich, visible: true, small_description: 'Le meilleur des paniers de noël à découvrir')
article1_img = URI.open('https://res.cloudinary.com/debeemobv/image/upload/v1620903904/Seeds/plateau-repas-poisson_ef4hfk.jpg')
article1.image.attach(io:article1_img, filename: 'article1.jpg', content_type: 'images.jpg')
article1.save
puts "."


article2 = Article.new( title: 'Panier Pâques', content: Faker::Markdown.sandwich, visible: false, small_description: 'Le meilleur des paniers de pâques à découvrir')
article2_img = URI.open('https://res.cloudinary.com/debeemobv/image/upload/v1620919427/Seeds/posson_paques_h68zhi.jpg')
article2.image.attach(io:article2_img, filename: 'article2.jpg', content_type: 'images.jpg')
article2.save
puts "."

puts "Creating recipes"
recipe1 = Recipe.new( title: 'Filet de Flétan')
recipe1_img = URI.open('https://res.cloudinary.com/debeemobv/image/upload/v1620920804/Seeds/recette_just_fish_fle%CC%81tan_ohvjcc.jpg')
recipe1.image.attach(io:recipe1_img, filename: 'recipe1.jpg', content_type: 'images.jpg')
recipe1_img2 = URI.open('https://res.cloudinary.com/debeemobv/image/upload/v1621434142/Seeds/Capture_d_e%CC%81cran_2021-05-19_a%CC%80_16.22.13_p1fws7.png')
recipe1.cover_image.attach(io:recipe1_img2, filename: 'recipe2.jpg', content_type: 'images.jpg')
recipe1.save
puts "."

recipe2 = Recipe.new( title: 'Gravlax')
recipe2_img = URI.open('https://res.cloudinary.com/debeemobv/image/upload/v1621434173/Seeds/Capture_d_e%CC%81cran_2021-05-19_a%CC%80_16.22.37_lxvbu5.png')
recipe2.image.attach(io:recipe2_img, filename: 'recipe2.jpg', content_type: 'images.jpg')
recipe2_img = URI.open('https://res.cloudinary.com/debeemobv/image/upload/v1621434173/Seeds/Capture_d_e%CC%81cran_2021-05-19_a%CC%80_16.22.37_lxvbu5.png')
recipe2.cover_image.attach(io:recipe2_img, filename: 'recipe2.jpg', content_type: 'images.jpg')
recipe2.save
puts "."

puts "Creating Galleries"
gallery1 = Gallery.new( name: 'homepage', description: "Photo en haut de la page d'accueil")
gallery1_img = URI.open('https://res.cloudinary.com/debeemobv/image/upload/v1621434326/Seeds/Just_Fish_-_poissonerie-1_1_xwktex.jpg')
gallery1.images.attach(io:gallery1_img, filename: 'gallery1.jpg', content_type: 'images.jpg')
gallery1.save
puts "."


puts "."

puts "Creating texts"
Text.create!(name:"horaires", content: 'du mardi au jeudi, de 14h à 17h')
puts "."
