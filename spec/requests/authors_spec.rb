require 'rails_helper'

RSpec.describe 'Authors', type: :request do
  describe 'GET /show' do
    it 'should returns http 200 success' do
      get authors_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /index' do
    it 'should returns http 200 success' do
      get authors_path
      expect(response).to have_http_status(200)
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
