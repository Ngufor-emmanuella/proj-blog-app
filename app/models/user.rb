class User < ApplicationRecord
  has_many :posts, class_name: 'Post', foreign_key: :author_id
  has_many :comments, class_name: 'Comment', foreign_key: :author_id
  has_many :likes, class_name: 'Like', foreign_key: :author_id

<<<<<<< HEAD
  validates :name, presence: true
=======
<<<<<<< HEAD
  validates :name, presence: true, length: { in: 3..25 }
>>>>>>> origin
  validates :posts_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

=======
>>>>>>> origin
  def recent_posts
    Post.order(created_at: :desc).includes(:author).limit(3)
  end
end
