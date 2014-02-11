class AbstractScoringLogic
  # scoring logic class must implement scoring function
  def scoring(restaurant)
    raise "Called abstract method: scoring"
  end
end
