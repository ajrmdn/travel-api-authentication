require 'rails_helper'

describe "get all destinations route", :type => :request do
  User.delete_all
  URL = '/v1/destinations'
  user = FactoryBot.create(:user)
  def authenticated_header(user)
    token = JsonWebToken.encode(user_id: user.id)
    { 'Authorization': "#{token}" }
  end

  it 'returns status code 200' do
    get URL, headers: authenticated_header(user)
    expect(response).to have_http_status(:success)
  end
end
