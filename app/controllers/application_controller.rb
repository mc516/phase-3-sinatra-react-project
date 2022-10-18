class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  #http://localhost:9292/

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

  delete '/restaurants/:id' do
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy
  end

  get '/reviews' do 
    reviews = Review.all
    reviews.to_json(include: :client)
  end

  get '/reviews/:id' do 
    review = Review.find(params[:id])
    review.to_json(include: :client)
  end

  patch '/reviews/:id' do
    review = Review.find(params[:id])
    review.update(rating: params[:rating])
    review.update(comment: params[:comment])
    review.to_json
  end

  post '/reviews/' do
    client = Client.find_or_create_by(name: params[:name])

    new_review = Review.create(
      rating: params[:rating],
      comment: params[:comment],
      restaurant_id: params[:restaurant_id],
      client_id: client.id
    )

    new_review.to_json
  end

  delete '/reviews/:id' do
    review = Review.find(params[:id])
    review.destroy
   
  end



end