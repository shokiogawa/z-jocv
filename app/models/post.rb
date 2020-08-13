class Post < ApplicationRecord

    
    belongs_to :user
    has_many :contents, dependent: :destroy
    
    has_many :post_kind_relationships, dependent: :destroy
    has_many :kinds, through: :post_kind_relationships, dependent: :destroy
    
    has_many :favorites, dependent: :destroy
    has_many :users, through: :favorites
  
    accepts_nested_attributes_for :contents, allow_destroy: true
    
    belongs_to :t_content, optional: true
end
