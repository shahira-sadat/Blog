require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    before(:each) do
      get '/authors/:author_id/posts/'
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'renders correct template text' do
      expect(response.body).to include('User posts')
    end
    it 'Response status is 200' do
      get root_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /show' do
    before(:each) do
      get '/authors/:author_id/posts/:id'
    end
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'renders correct template text' do
      expect(response.body).to include('Here is a list of posts for a given user')
    end
  end
end
