require 'spec_helper'

describe Tabelog do
  it "fill the tabelog rating" do
    restaurant = Restaurant.new
    restaurant.name = "武蔵屋"
    restaurant.address = "東京都品川区東大井5-4-10"
    restaurant = Tabelog.get_additional_info_with_clawler(restaurant)
    expect(restaurant.tabelog_rating).to be >= 3
    expect(restaurant.tabelog_rating).to be < 4
  end
end
