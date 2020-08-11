class CreateSexams < ActiveRecord::Migration[5.2]
  def change
    create_table :sexams do |t|
      t.string :image
      t.string :stitle
      t.text :content
      t.references :exam, foreign_key: true

      t.timestamps
    end
  end
end
