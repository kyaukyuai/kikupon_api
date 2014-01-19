require 'spec_helper'

describe Tabelog do
  it "fill the tabelog rating" do
    restaurant = Restaurant.new
    Tabelog.get_additional_info_with_clawler(restaurant)
    expect(restaurant.tabelog_rating).to eq(1)
  end
end
