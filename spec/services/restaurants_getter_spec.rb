require 'spec_helper'
require Rails.root.to_s + '/app/services/restaurants_getter.rb'

describe RestaurantsGetter do
  it "get restaurants from Gurunavi API and fill each tabelog rating" do
    # TODO should use stab to separate test layer
    lat = 35.664035231
    lng = 139.70785100000001
    range = 1
    restaurants = RestaurantsGetter.get(lat, lng, range)
    expect(restaurants.size).to be >= 1

    shop_counter = 0
    error_counter = 0
    restaurants.each { |restaurant|
      shop_counter += 1
      if restaurant.tabelog_rating == -1
        error_counter += 1
      else
        expect(restaurant.tabelog_rating).to be > 1.5
        expect(restaurant.tabelog_rating).to be < 4.5
      end
    }
    expect(error_counter/shop_counter).to be < 0.5
  end
end
