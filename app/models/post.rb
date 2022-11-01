class Post < ApplicationRecord
  belongs_to :author
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  # after_save :update_posts_counter_per_user

  validates :title, presence: true, length: { maximum: 250 }
  validates :text, presence: true, length: { maximum: 500 }
  validates :comments_counter, :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def five_most_recent_comments_per_post
    comments.last(5)
  end

  # private

  def update_posts_counter_per_user
    author.update(posts_counter: author.posts.count)
  end
end
