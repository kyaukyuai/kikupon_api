require 'spec_helper'

describe Recommender do
  it "return recommended restaurants Array" do
    # TODO should use stab to separate test layer
    lat = 35.664035231
    lng = 139.70785100000001
    range = 1
    restaurants = RestaurantsGetter.get(lat, lng, range)

    user = User.new
    recommender = Recommender.new(restaurants, user)
    sorted_restaurants = recommender.recommend

    expect(sorted_restaurants.size).to be >= 1
    
    # TODO check test for score sort
    score_array = Array.new
    sorted_restaurants.each { |sorted_restaurant| score_array << sorted_restaurant.score }
    original_score_array = score_array.dup
    score_array.sort!
    expect(score_array).to match_array(original_score_array)
  end
end
