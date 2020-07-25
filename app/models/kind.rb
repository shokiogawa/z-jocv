class Kind < ApplicationRecord
    has_many :post_kind_relationships
    has_many :posts, through: :post_kind_relationships
end
