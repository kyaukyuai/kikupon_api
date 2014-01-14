require_relative "../app/models/gurunavi_response.rb"

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
        end

        get do
            uri = URI.parse "http://api.gnavi.co.jp/ver1/RestSearchAPI/?keyid=1a44098f06ec9e3c42211d95e0b0284d&latitude=" + "%3.6f" % params[:lat] + "&longitude=" + "%3.6f" % params[:lng] + "&range=3&input_coordinates_mode=2"
            res = Net::HTTP.get uri
            response = Gurunavi::Response.parse(Net::HTTP.get uri)
            if response.blank? or response.rest.blank?
            else
                response.rest[0..2]
            end
        end
    end
end
