class AddKindToPostKindRelationships < ActiveRecord::Migration[5.2]
  def change
    add_reference :post_kind_relationships, :kind, foreign_key: true
  end
end
