class Kind < ApplicationRecord
    has_many :post_kind_relationships, dependent: :destroy
    has_many :posts, through: :post_kind_relationships, dependent: :destroy
end
