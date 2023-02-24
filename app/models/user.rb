class User < ApplicationRecord
  has_many :comments, class_name: 'Comment', foreign_key: 'author_id'
  has_many :posts, class_name: 'Post', foreign_key: 'author_id'
  has_many :likes, class_name: 'Like', foreign_key: 'author_id'

<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
  validates :name, presence: true
=======
<<<<<<< HEAD
  validates :name, presence: true, length: { in: 3..25 }
>>>>>>> origin
=======
<<<<<<< HEAD
  validates :name, presence: true
>>>>>>> 34fef80a6fe7d2764844da5770f8ac5265163bbf
  validates :posts_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

=======
<<<<<<< HEAD
>>>>>>> origin
  validates :name, presence: true, length: { in: 3..25 }
  validates :posts_counter, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :photo, presence: true
  validates :bio, presence: true

  def recent_posts
    posts.order(created_at: :desc).limit(3)
  end
end
