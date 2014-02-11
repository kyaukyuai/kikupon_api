require 'spec_helper'

describe 'GET /s/v1/get_rests?id=1234&lat=35.664035&lng=139.698212' do
  before do
    get "/s/v1/get_rests?id=1234&lat=35.664035&lng=139.698212"
  end

  it 'get http status 200 OK' do
    expect(response).to be_success
    expect(response.status).to eq(200)
  end

  it 'get recommended restaurants json' do
    json = JSON.parse(response.body)
    expect(json).not_to be_nil
  end
end
