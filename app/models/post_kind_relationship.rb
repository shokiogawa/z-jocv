class PostKindRelationship < ApplicationRecord
  belongs_to :post, dependent: :destroy
  belongs_to :kind, dependent: :destroy
end
