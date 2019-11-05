class Destination < ApplicationRecord
  has_many :posts
  has_many :bloggers, through: :posts

  def featured_post
    self.posts.max_by { |post| post.likes }
  end

  def average_blogger_age
    if self.bloggers.count > 0
      self.bloggers.map { |blogger| blogger.age }.reduce(:+) / self.bloggers.count
    else
      0
    end
  end
end
