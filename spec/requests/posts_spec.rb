require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    before(:all) do
      @author1 = Author.create!(name: 'Navid',
                                photo: 'https://mobile.twitter.com/sm_sayedi/photo',
                                bio: 'Teacher from Kabul.')
      post1 = Post.create!(author: @author1, title: 'Post 1', text: 'text Post 1')
    end
    before(:each) do
      get author_posts_path(@author1)
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'renders correct template text' do
      expect(response.body).to include('Post Counter')
    end
  end

  describe 'GET /show' do
    before(:each) do
        get author_posts_path(@author1)
    end
  end
end