require 'spec_helper'

describe Gurunavi do
  it "get restaurants from Gurunavi API" do
    lat = 35.664035231
    lng = 139.70785100000001
    range = 1
    restaurants = Gurunavi.get_from_api(lat, lng, range)
    expect(restaurants.size).to be >= 1
  end
end
