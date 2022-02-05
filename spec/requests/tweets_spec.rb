require 'rails_helper'

# describe 'Tweets API', type: :request do
#   describe "in the Tweets controller" do
#     describe "#index" do
#       before { get '/api/v1/tweets' }
#       it { expect(response).to have_http_status(200) }
#     end

#     describe "#create" do
#       before { post '/api/v1/tweets' }
#       it { expect(response).to have_http_status(200) }
#     end

#     describe "#destroy" do
#       before { delete '/api/v1/tweets/1' }
#       it { expect(response).to have_http_status(200) }
#       it { expect(JSON.parse(response.body).size).to eq(2)}
#     end

  # it 'fails to return tweets if no user' do
  #   FactoryBot.create(:tweet, tweet: "this is a test tweet.")
  #   FactoryBot.create(:tweet, tweet: "this is another a test tweet.")
  #   get '/api/v1/tweets'
  #   expect(response.body).not_to be_valid

  # end

  # it 'returns all tweets' do
  #   @user = User.new(email: 'test@test.com', password: '123', password_confirmation: '123')
  #   FactoryBot.create(:tweet, tweet: "this is a test tweet.")
  #   FactoryBot.create(:tweet, tweet: "this is another a test tweet.")

  #   get '/api/v1/tweets'

  #   expect(response).to have_http_status(200)
  #   expect(JSON.parse(response.body).size).to eq(2)
    end
  end
end