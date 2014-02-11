module RestaurantsGetter
  def self.get(lat, lng, range)
    restaurants = Gurunavi.get_from_api(lat, lng, range)
    i = 0
    restaurants.map { |restaurant|
      restaurant = Tabelog.get_additional_info_with_clawler(restaurant)
    }
    return restaurants
  end
end
