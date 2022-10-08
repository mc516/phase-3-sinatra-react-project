class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/' do
    { message: "Good luck with your project!" }.to_json
    # restaurants = Restaurant.all
    # restaurant.to_json
  end

  get '/restaurants' do 
    restaurants = Restaurant.all
    restaurants.to_json
  end
end
