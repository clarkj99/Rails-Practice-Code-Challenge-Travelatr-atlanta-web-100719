class Blogger < ApplicationRecord
  has_many :posts
  has_many :destinations, through: :posts

  validates :name, uniqueness: true
  validates :age, numericality: { greater_than: 18 }
  validates :bio, length: { minimum: 30 }

  def featured_post
    self.posts.max_by { |post| post.likes }
  end

  def total_likes
    self.posts.map { |post| post.likes }.reduce(:+)
  end
end
