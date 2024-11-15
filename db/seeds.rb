
# Seed de 10 movies
# on clean la DB de movies et bookmarks (car dependent destroy)
puts "Cleaning database..."
Bookmark.destroy_all
Movie.destroy_all

# on créé 10 movies
puts "Creating movies..."
10.times do
    rate = rand(0..10)
    poster = ["aditya-saxena-tj24rcDcmkY-unsplash.jpg","austin-chan-ukzHlkoz1IE-unsplash.jpg", "casey-horner-0D8_tYHIy0o-unsplash.jpg", "freestocks-Qx5QNarbrUM-unsplash.jpg", "gaspar-zaldo-Z9NAI0mf1KA-unsplash.jpg", "gio-bartlett-2-C_Sa5wZZA-unsplash.jpg", "hal-gatewood-OgvqXGL7XO4-unsplash.jpg", "hans-eiskonen--RQ8tGcn2EY-unsplash.jpg", "history-in-hd-e5eDHbmHprg-unsplash.jpg", "jared-rice-NTyBbu66_SI-unsplash.jpg", "jr-korpa-JKRL7ofWWAA-unsplash.jpg", "loren-cutler-DLEvzWzKtoM-unsplash.jpg", "nathan-wright-igpwuxZofgo-unsplash.jpg", "peter-larsen-vGzmLshPjbc-unsplash.jpg", "stefano-pollio-ZC0EbdLC8G0-unsplash.jpg", "steven-beyer-xsZUrBBcUk0-unsplash.jpg", "vitaliy-shevchenko-vVcxBZTx37g-unsplash.jpg"].sample
    Movie.create!(title: Faker::Movie.title, overview: Faker::Movies::HitchhikersGuideToTheGalaxy.quote, poster_url: poster, rating: rate)
  end

# Seed de 7 catégories
# on clean la DB
puts "Cleaning database..."
List.destroy_all

# on créé 8 lists
puts "Creating lists..."
List.create(name: "Romance")
List.create(name: "Horror")
List.create(name: "Action")
List.create(name: "Science-fiction")
List.create(name: "Fantasy")
List.create(name: "Thriller")
List.create(name: "Spy")
List.create(name: "Documentary")
