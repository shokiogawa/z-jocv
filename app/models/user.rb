class User < ApplicationRecord

  mount_uploader :image, ImageUploader
  validates :name, presence: true, length: {maximum: 50}
  validates :email, presence: true, length: { maximum: 255 },
                  format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                  uniqueness: { case_sensitive: false }
  has_secure_password
  
  has_many :posts
  has_many :favorites
  has_many :f_posts, through: :favorites, source: :post
  
def favorite?(post)
  self.f_posts.include?(post)
end
end
