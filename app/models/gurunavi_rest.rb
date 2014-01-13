class GurunaviRest
    include HappyMapper
    tag "rest"
    element :id, String
    element :name, String
    element :name_kana, String
    element :latitude, Float
    element :longitude, Float
    element :category, String
    element :url, String
    element :url_mobile, String
    element :address, String
    element :tel, String
    element :fax, String
    element :opentime, String
    element :holiday, String
    element :budget, String
end
