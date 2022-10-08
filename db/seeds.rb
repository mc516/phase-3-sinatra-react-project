puts "🌱 Seeding spices..."
# Seed your database here
# rake db:reset

Restaurant.create(name: "Joon Omakase")
Restaurant.create(name: "The Alcove")
Restaurant.create(name: "Antidote")

Client.create(name: "Edward")
Client.create(name: "John")
Client.create(name: "Mel")

Review.create(rating: "5", comment: "Best sushi in town", restaurant_id: "1", client_id: "1")
Review.create(rating: "5", comment: "Service was great", restaurant_id: "2", client_id: "1")
Review.create(rating: "5", comment: "I really enjoyed the lamb chops", restaurant_id: "3", client_id: "1")

puts "✅ Done seeding!"
