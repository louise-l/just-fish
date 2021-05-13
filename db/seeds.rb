
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

puts "-------------------------------"
puts "Everything is destroyed"
puts "-------------------------------"

puts "Creating Users"


louise = User.create!( email: 'lou@email.com', password: 'azerty', admin: true)
puts "."

lambda = User.create!( email: 'lambda@email.com', password: 'azerty', admin: false)
puts "."

puts "Creating articles"


article1 = Article.new( title: 'Panier Noël', content: 'Panier spécial fête de noel', visible: true)
article1_img = URI.open('https://res.cloudinary.com/debeemobv/image/upload/v1620903904/Seeds/plateau-repas-poisson_ef4hfk.jpg')
article1.image.attach(io:article1_img, filename: 'article1.jpg', content_type: 'images.jpg')
article1.save
puts "."


article2 = Article.new( title: 'Panier Pâques', content: 'Panier spécial fête de pâques, tout en chocolat', visible: false)
article2_img = URI.open('https://res.cloudinary.com/debeemobv/image/upload/v1620919427/Seeds/posson_paques_h68zhi.jpg')
article2.image.attach(io:article2_img, filename: 'article2.jpg', content_type: 'images.jpg')
article2.save
puts "."

puts "Creating recipes"
recipe1 = Recipe.new( title: 'Filet de Flétan')
recipe1_img = URI.open('https://res.cloudinary.com/debeemobv/image/upload/v1620920804/Seeds/recette_just_fish_fle%CC%81tan_ohvjcc.jpg')
recipe1.image.attach(io:recipe1_img, filename: 'recipe1.jpg', content_type: 'images.jpg')
recipe1.save
puts "."

recipe2 = Recipe.new( title: 'Gravlax')
recipe2_img = URI.open('https://res.cloudinary.com/debeemobv/image/upload/v1620920870/Seeds/recette_just_fish_gravlax_hgmugg.jpg')
recipe2.image.attach(io:recipe2_img, filename: 'recipe2.jpg', content_type: 'images.jpg')
recipe2.save
puts "."

puts "Creating Galleries"
gallery1 = Gallery.new( name: 'homepage', description: "Photos en haut de la page d'accueil")
gallery1_img = URI.open('https://res.cloudinary.com/debeemobv/image/upload/v1620903904/Seeds/plateau-repas-poisson_ef4hfk.jpg')
gallery1.images.attach(io:gallery1_img, filename: 'gallery1.jpg', content_type: 'images.jpg')
gallery1_img2 = URI.open('https://res.cloudinary.com/debeemobv/image/upload/v1620919427/Seeds/posson_paques_h68zhi.jpg')
gallery1.images.attach(io:gallery1_img2, filename: 'gallery1.jpg', content_type: 'images.jpg')
gallery1.save
puts "."


puts "."

