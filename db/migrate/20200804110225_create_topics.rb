class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :title
      t.references :textbook, foreign_key: true

      t.timestamps
    end
  end
end
