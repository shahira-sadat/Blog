require 'rails_helper'

RSpec.describe 'Authors', type: :request do
  describe 'GET /show' do
    before(:each) do
      get '/authors/show'
    end
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
    it 'renders correct template text' do
      expect(response.body).to include('Here is list of Authors')
    end
  end

  describe 'GET /index' do
    before(:each) do
      get '/authors/index'
    end
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /' do
    before(:each) do
      get '/'
    end
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'renders correct template text' do
      expect(response.body).to include('Authors')
    end
  end
end
