class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  belongs_to :post, class_name: 'Post', foreign_key: 'post_id'

  after_save :update_comments_counter

  private

<<<<<<< HEAD
  def update_comments_counter
    post.increment!(:comments_counter)
  
    comment.increment!(:comments_counter)

=======
  def update_comment_counter
<<<<<<< HEAD
    post.increment!(:comments_counter)
=======
<<<<<<< HEAD
    comment.increment!(:comments_counter)
=======
<<<<<<< HEAD
    comment.increment!(:comments_counter)
=======
    post.increment!(:comments_counter)
>>>>>>> origin
>>>>>>> origin
>>>>>>> origin
  end
end
