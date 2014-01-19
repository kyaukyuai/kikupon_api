require 'spec_helper'

describe BasicScoringLogic do
  it "calculate score for each restaurant" do
    restaurant = Restaurant.new
    restaurant.tabelog_rating = 1
    user = User.new
    logic = BasicScoringLogic.new(user)
    expect(logic.scoring(restaurant)).to eq(1)
  end
end
