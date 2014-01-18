require_relative "../app/models/gurunavi_response.rb"

class ShokuponAPI < Grape::API
    format :json
    formatter :json, Grape::Formatter::Rabl

    # constant value
    GNAVI_URL              = "http://api.gnavi.co.jp/ver1/RestSearchAPI/"
    KEY_ID                 = "1a44098f06ec9e3c42211d95e0b0284d"
    INPUT_COORDINATES_MODE = "2"

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
            puts GNAVI_URL + "?keyid=" + KEY_ID + "&latitude=" + "%3.6f" % params[:lat] + "&longitude=" + "%3.6f" % params[:lng] + "&range=" + params[:range].to_s + "&input_coordinates_mode=" + INPUT_COORDINATES_MODE
            uri = URI.parse GNAVI_URL + "?keyid=" + KEY_ID + "&latitude=" + "%3.6f" % params[:lat] + "&longitude=" + "%3.6f" % params[:lng] + "&range=" + params[:range].to_s + "&input_coordinates_mode=" + INPUT_COORDINATES_MODE
            res = Net::HTTP.get uri
            response = Gurunavi::Response.parse(Net::HTTP.get uri)
            if response.blank? or response.rest.blank?
            else
                response.rest
            end
        end
    end
end
