class Restaurant
  include HappyMapper
  include Gurunavi

  tag "rest"
  element :id, String
  element :name, String
  element :name_kana, String
  element :latitude, Float
  element :longitude, Float
  element :category, String
  element :url, String
  element :url_mobile, String
  has_many:image_url, Image
  has_many:pr, PR
  has_many:access, Access
  element :address, String
  element :tel, String
  element :fax, String
  element :opentime, String
  element :holiday, String
  element :budget, String

  # not gurunavi parameters
  element :score, Float
  element :tabelog_rating, Float
end

