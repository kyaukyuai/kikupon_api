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
    restaurants.each { |restaurant| expect(restaurant.tabelog_rating).to eq(1) }
  end
end
