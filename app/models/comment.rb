class Comment < ApplicationRecord
  belongs_to :post, class_name: 'Post', foreign_key: :post_id
  belongs_to :author, class_name: 'User', foreign_key: :author_id

  def update_comment_counter
<<<<<<< HEAD
    comment.increment!(:comments_counter)
=======
<<<<<<< HEAD
    comment.increment!(:comments_counter)
=======
    post.increment!(:comments_counter)
>>>>>>> origin
>>>>>>> origin
  end
end
