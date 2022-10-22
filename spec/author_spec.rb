require 'rails_helper'

RSpec.describe Author, type: :model do
  subject { Author.new(name: 'Ahmad', photo: 'image', bio: 'Teacher from Colombia', posts_counter: 0) }

  before { subject.save }

  context 'name' do
    it 'name should be Ahmad' do
      expect(subject.name).to match('Ahmad')
    end

    it 'name should be present' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'name length should be less than 27 characters' do
      subject.name = 'Ahmad' * 6
      expect(subject).to_not be_valid
    end
  end

  context 'post_counter' do
    it 'post_counter should be present' do
      subject.posts_counter = nil
      expect(subject).to_not be_valid
    end

    it 'post_counter should be a number' do
      subject.posts_counter = 'hello'
      expect(subject).to_not be_valid
    end
  end

  context 'recent_posts' do
    before(:each) do
      5.times do |postal|
        Post.new(title: "Post #{postal}", text: "text #{postal}", comments_counter: 0, likes_counter: 0,
                 author_id: subject.id)
      end
    end

    it 'should return the 3 latest posts' do
      expect(subject.three_recent_posts_per_user).to eq(Post.order(created_at: :desc).limit(3))
      expect(subject.three_recent_posts_per_user).to eq(Post.last(3))
    end
  end
end
