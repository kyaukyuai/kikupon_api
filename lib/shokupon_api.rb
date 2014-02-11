require_relative "../app/models/gurunavi.rb"

class ShokuponAPI < Grape::API
  format :json
  formatter :json, Grape::Formatter::Rabl

  # API prefix
  # ex) http://localhost:3000/s
  prefix "s"

  # API version
  # ex) http://localhost:3000/s/v1
  version 'v1', :using => :path

  resource "get_rests" do
    # ex) http://localhost:3000/s/v1/get_rests
    desc "return reccomended restaurants"
    params do
      requires :id, type: Integer, desc: "User id."
      requires :lat, type: Float, desc: "Latitude."
      requires :lng, type: Float, desc: "Longitude."
      optional :range, type: Integer, default: "1"
    end

    get do
      restaurants = RestaurantsGetter.get(params[:lat], params[:lng], params[:range])
      #recommender = Recommender.new(restaurants, User.find(params[:id]))
      recommender = Recommender.new(restaurants, User.new)
      # recommender returns recommended restaurants Array
      return recommender.recommend
    end
  end
end
