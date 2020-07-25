class Post < ApplicationRecord

    mount_uploader :image, ImageUploader
    belongs_to :user
    has_many :contents
    
    has_many :post_kind_relationships
    has_many :kinds, through: :post_kind_relationships
    
    has_many :favorites
    has_many :users, through: :favorites
  
    accepts_nested_attributes_for :contents, allow_destroy: true
end
