class AddDetailsToRestaurants < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :location, :string
    
  end
end
