require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'Post model' do
    subject do
      Post.create(title: 'firstpost', text: 'This is my first post', author_id: 1)
    end

    before { subject.save }

    it 'title should be firstpost' do
      expect(subject.title).to match('firstpost')
    end

    it 'title should be present' do
      subject.title = nil
      expect(subject).to_not be_valid
    end

    it 'title length should be less than 250 characters' do
      subject.title = 'afghani' * 108
      expect(subject).to_not be_valid
    end

    it 'text should be This is my first post' do
      expect(subject.text).to match('This is my first post')
    end

    it 'txt should be present' do
      subject.text = nil
      expect(subject).to_not be_valid
    end

    it 'text length should be less than 500 characters' do
      subject.text = 'text' * 150
      expect(subject).to_not be_valid
    end

    it 'comments_counter should be present' do
      subject.comments_counter = nil
      expect(subject).to_not be_valid
    end

    it 'comments_counter should be a number' do
      subject.comments_counter = 'hi'
      expect(subject).to_not be_valid
    end

    it 'likes_counter should be present' do
      subject.likes_counter = nil
      expect(subject).to_not be_valid
    end

    it 'comments_counter should be a number' do
      subject.likes_counter = 'salam'
      expect(subject).to_not be_valid
    end
  end

  describe 'Post Model methods' do
    before do
      6.times do |number|
        subject.id = 1
        Comment.create(text: "test comment #{number}", author_id: 1, post: subject)
      end
    end

    it 'loads only the first five comments' do
      expect(subject.five_most_recent_comments_per_post.length).to eq(5)
    end
  end
end
