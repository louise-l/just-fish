
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

gallery2 = Gallery.new( name: 'homepage-about', description: "Photo de la section qui sommes nous")
gallery2_img = URI.open('https://res.cloudinary.com/debeemobv/image/upload/v1621611096/Seeds/Poissonniers-et-bouchers-min_kxcped.jpg')
gallery2.images.attach(io:gallery2_img, filename: 'gallery2.jpg', content_type: 'images.jpg')
gallery2.save
puts "."

gallery3 = Gallery.new( name: 'about', description: "Photo de la page informations pratiques")
gallery3_img = URI.open('https://res.cloudinary.com/debeemobv/image/upload/v1621933296/Seeds/ANNE_J-F_ppjvgc.jpg')
gallery3.images.attach(io:gallery3_img, filename: 'gallery3.jpg', content_type: 'images.jpg')
gallery3.save
puts "."

gallery4 = Gallery.new( name: 'poissons-frais', description: "Photo de la page produits - poisson frais")
gallery4_img = URI.open('https://res.cloudinary.com/debeemobv/image/upload/v1621937357/Seeds/4010_Colis_semaine_poissons_blancsFD_54w400_h3weba.jpg')
gallery4.images.attach(io:gallery4_img, filename: 'gallery4.jpg', content_type: 'images.jpg')
gallery4.save
puts "."

gallery5 = Gallery.new( name: 'huitres', description: "Photo de la page produits - huitres")
gallery5_img = URI.open('https://res.cloudinary.com/debeemobv/image/upload/v1621936738/Seeds/image_cropper_040F2D71-273A-4E09-8EFD-61D247379231-25300-00001518B3068CE7_a6w4l4.jpg')
gallery5.images.attach(io:gallery5_img, filename: 'gallery5.jpg', content_type: 'images.jpg')
gallery5.save
puts "."

gallery6 = Gallery.new( name: 'coquillages', description: "Photo de la page produits - coquillages et crustacés")
gallery6_img = URI.open('https://res.cloudinary.com/debeemobv/image/upload/v1621936770/Seeds/image_cropper_1611569929790_t0elfx.jpg')
gallery6.images.attach(io:gallery6_img, filename: 'gallery6.jpg', content_type: 'images.jpg')
gallery6.save
puts "."

gallery7 = Gallery.new( name: 'poissons-fumes', description: "Photo de la page produits - poissons fumés")
gallery7_img = URI.open('https://res.cloudinary.com/debeemobv/image/upload/v1621937214/Seeds/4020_Saumon_fume%CC%81_tranche_ouloqx.jpg')
gallery7.images.attach(io:gallery7_img, filename: 'gallery7.jpg', content_type: 'images.jpg')
gallery7.save
puts "."
gallery8 = Gallery.new( name: 'produits-contionnés', description: "Photo de la page produits - produits conditionnés")
gallery8_img = URI.open('https://res.cloudinary.com/debeemobv/image/upload/v1621933296/Seeds/ANNE_J-F_ppjvgc.jpg')
gallery8.images.attach(io:gallery8_img, filename: 'gallery8.jpg', content_type: 'images.jpg')
gallery8.save
puts "."

gallery9 = Gallery.new( name: 'produits-surgeles', description: "Photo de la page produits - produits surgelés")
gallery9_img = URI.open('https://res.cloudinary.com/debeemobv/image/upload/v1621933296/Seeds/ANNE_J-F_ppjvgc.jpg')
gallery9.images.attach(io:gallery9_img, filename: 'gallery9.jpg', content_type: 'images.jpg')
gallery9.save
puts "."

gallery10 = Gallery.new( name: 'epicerie', description: "Photo de la page produits - epicerie / conserverie")
gallery10_img = URI.open('https://res.cloudinary.com/debeemobv/image/upload/v1621936734/Seeds/4055_rillette_saint_jacques_JF_js85yi.jpg')
gallery10.images.attach(io:gallery10_img, filename: 'gallery10.jpg', content_type: 'images.jpg')
gallery10.save
puts "."

gallery11 = Gallery.new( name: 'alcools', description: "Photo de la page produits - alcools")
gallery11_img = URI.open('https://res.cloudinary.com/debeemobv/image/upload/v1621933296/Seeds/ANNE_J-F_ppjvgc.jpg')
gallery11.images.attach(io:gallery11_img, filename: 'gallery11.jpg', content_type: 'images.jpg')
gallery11.save
puts "."



puts "."

puts "Creating texts"
Text.create!(name:"horaires", content: 'du mardi au jeudi, de 14h à 17h')
puts "."

Text.create!(name:"qui-sommes-nous-accueil", content: "Il y a 4 ans, nous avons embarqué pour l'aventure Just Fish ! Ayant grandi au sein d'une famille de Grossistes en Produits de la Mer, nous souhaitions amener ces produits auprès des particuliers.
  Just Fish, c'est du poisson frais, de qualité et au détail ! Nous vous proposons chaque semaine une sélection variée au fil des saisons et nous y ajoutons volontiers des conseils pour une cuisine simple et saine. 
  Just Fish, c'est la Mer près de chez Vous : Nous garantissons la fraîcheur et la qualité grâce à des arrivages quotidiens et des filières réputées.
  Notre Magasin se situe à Wargnies-le-Grand, à proximité de la voie rapide Valenciennes / Maubeuge. Vous y trouverez poissons en filets, dos, joues, ou pavés, poissons entiers, coquillages et crustacés, ainsi que des conserves artisanales et une sélection de vins.")
puts "."

Text.create!(name: "presentation-accueil", content: '[a modifier] Just fish est une poissonnerie située à Wargnies-le-Grand,
  près de Valenciennes, dans le Nord
  Produits frais, circuit court
  ou encore écologie et qualité des produits.')
Text.create!(name: "selection-semaine", content: '[a modifier] Nous choisissons pour vous des produits frais, voici la selction de cette semaine ')
Text.create!(name: "livraison", content: '[a modifier] Nous pouvons livrer à 20km pour les commandes à partir de 50€, à 50km pour les commandes à partir de 100€')

Text.create!(name: "poissons-frais", content: 'Entiers, en filets, en dos, en joues, en pavés')
Text.create!(name: "huitres", content: "Gillardeau, Marennes-Oléron, PRAT Ar Coum de Bretagne, Parcs de l imperatrice Bassin d'Arcachon")
Text.create!(name: "coquillages-crustaces", content: 'Vivants et cuits : moules, saint-jacques, coques, palourdes, crevettes, langoustines, tourteaux')
Text.create!(name: "poissons-fumes", content: 'Saumon, flétan, haddock...')
Text.create!(name: "produits-conditionnes", content: 'Œufs de poisson, anchois marinés, chair de crabe, ...')
Text.create!(name: "produits-surgeles", content: 'gambas, cocktail de fruits de mer, cuisses de grenouille')
Text.create!(name: "epicerie", content: 'Conserverie : algoplus roscoff et jean de luz , rillettes , soupes, sardines, thon, salicorne, SEL de Guérande')
Text.create!(name: "alcools", content: ' Vins, champagne, bière artisanale')
