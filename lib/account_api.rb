class ShokuponAPI < Grape::API
  format :json
  formatter :json, Grape::Formatter::Rabl

  # API prefix
  # ex) http://localhost:3000/a
  prefix "a"

  # API version
  # ex) http://localhost:3000/a/v1
  version 'v1', :using => :path

  resource "create_account" do
    # ex) http://localhost:3000/a/v1/create_account
    desc "create account"
    params do
    end

    get do
    end
  end
end
