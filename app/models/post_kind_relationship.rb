class PostKindRelationship < ApplicationRecord
  belongs_to :post
  belongs_to :kind
end
