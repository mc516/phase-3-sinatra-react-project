puts "🌱 Seeding spices..."
# Seed your database here
Restaurant.create(name: "Joon Omakase")
Restaurant.create(name: "The Alcove")
Restaurant.create(name: "Antidote")

Client.create(name: "Edward")
Client.create(name: "John")
Client.create(name: "Mel")


puts "✅ Done seeding!"
