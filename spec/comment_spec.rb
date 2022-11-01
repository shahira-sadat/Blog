require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'Comment model' do
    subject do
      Comment.new(text: 'Lorem ipsum, ipsum lorem', author_id: 1, post_id: 1)

      before { subject.save }

      it 'text should be Lorem ipsum, ipsum lorem' do
        expect(subject.text).to match('Lorem ipsum, ipsum lorem')
      end

      it 'text should be present' do
        subject.text = nil
        expect(subject).to_not be_valid
      end

      it 'text length should be less than 300 characters' do
        subject.text = text * 108
        expect(subject).to_not be_valid
      end

      it 'check if it increases the comments' do
        prev = Post.find(1).comments_counter
        subject.update_comment_counter
        expect(Post.find(1).comments_counter).to eq(prev + 1)
      end
    end
  end
end
