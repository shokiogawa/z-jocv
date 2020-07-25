class RemoveUserFromPostKindRelationships < ActiveRecord::Migration[5.2]
  def change
    remove_reference :post_kind_relationships, :user, foreign_key: true
  end
end
