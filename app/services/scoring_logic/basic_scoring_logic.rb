class BasicScoringLogic < AbstractScoringLogic
  def initialize(user)
    @user = user
  end

  def scoring(restaurant)
    score = restaurant.tabelog_rating
  end
end

