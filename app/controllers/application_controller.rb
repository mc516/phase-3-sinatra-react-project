class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  #http://localhost:9292/restaurants
  get '/' do
    { message: "Good luck with your project!" }.to_json
    # restaurants = Restaurant.all
    # restaurant.to_json
  end

  get '/restaurants' do 
    restaurants = Restaurant.all
    restaurants.to_json
  end

  post '/restaurants' do
    new_restaurant = Restaurant.create(
      name: params[:name],
      location: params[:location]
    )
    new_restaurant.to_json 
  end

  get '/clients' do
    clients = Client.all
    clients.to_json
  end

  get '/reviews' do 
    # review = Review.select { |review| review.restaurant_id === params[:restaurant_id]}
    reviews = Review.all
    reviews.to_json
  end





end