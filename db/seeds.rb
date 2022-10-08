puts "🌱 Seeding spices..."
# Seed your database here
# rake db:reset

Restaurant.create(name: "Joon Omakase", location: "158-14 Northern Blvd Suite LL1, Flushing, NY 11358")
Restaurant.create(name: "The Alcove", location: "41-11 49th St, Queens, NY 11104")
Restaurant.create(name: "Antidote", location: "66 S 2nd St, Brooklyn, NY 11249")

Client.create(name: "Edward")
Client.create(name: "John")
Client.create(name: "Mel")

Review.create(rating: "5", comment: "Best sushi in town", restaurant_id: "1", client_id: "1")
Review.create(rating: "5", comment: "Service was great", restaurant_id: "2", client_id: "1")
Review.create(rating: "5", comment: "I really enjoyed the lamb chops", restaurant_id: "3", client_id: "1")

puts "✅ Done seeding!"
